<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','course_type') || $check_field('add','course_type') || $check_field('set','course_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="课程类型" prop="course_type">
												<el-input id="course_type" v-model="form['course_type']" placeholder="请输入课程类型"
							  v-if="user_group === '管理员' || (form['teaching_evaluation_methods_id'] && $check_field('set','course_type')) || (!form['teaching_evaluation_methods_id'] && $check_field('add','course_type'))" :disabled="disabledObj['course_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','course_type')">{{form['course_type']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_sample_table') || $check_field('add','evaluation_sample_table') || $check_field('set','evaluation_sample_table')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="评价样表" prop="evaluation_sample_table">
								<el-upload :disabled="disabledObj['evaluation_sample_table_isDisabled']" id="evaluation_sample_table" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_evaluation_sample_table"
						:show-file-list="false" v-if="user_group === '管理员' || (form['teaching_evaluation_methods_id'] && $check_field('set','evaluation_sample_table')) || (!form['teaching_evaluation_methods_id'] && $check_field('add','evaluation_sample_table'))">
						<img v-if="form['evaluation_sample_table']" :src="$fullUrl(form['evaluation_sample_table'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','evaluation_sample_table')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['evaluation_sample_table'])" :preview-src-list="[$fullUrl(form['evaluation_sample_table'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_method') || $check_field('add','evaluation_method') || $check_field('set','evaluation_method')" :xs="24" :sm="24" :lg="24" class="el_form_editor_warp">
				<el-form-item label="评价办法" prop="evaluation_method">
					<quill-editor v-model.number="form['evaluation_method']"
						v-if="user_group === '管理员' || (form['teaching_evaluation_methods_id'] && $check_field('set','evaluation_method')) || (!form['teaching_evaluation_methods_id'] && $check_field('add','evaluation_method')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','evaluation_method')" v-html="form['evaluation_method']"></div>
				</el-form-item>
			</el-col>
					
	
	
	
	
	
	
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "teaching_evaluation_methods_id",
				url_add: "~/api/teaching_evaluation_methods/add?",
				url_set: "~/api/teaching_evaluation_methods/set?",
				url_get_obj: "~/api/teaching_evaluation_methods/get_obj?",
				url_upload: "~/api/teaching_evaluation_methods/upload?",

				query: {
					"teaching_evaluation_methods_id": 0,
				},

				form: {
								"course_type":  '', // 课程类型
										"evaluation_sample_table":  '', // 评价样表
										"evaluation_method":  '', // 评价办法
											"teaching_evaluation_methods_id": 0, // ID
						
				},
				disabledObj:{
								"course_type_isDisabled": false,
										"evaluation_sample_table_isDisabled": false,
										"evaluation_method_isDisabled": false,
										},

	
		
		
	
			}
		},
		methods: {


	
	
						/**
			 * 上传评价样表
			 * @param {Object} param 图片参数
			 */
			upload_evaluation_sample_table(param){
						this.uploadFile(param.file, "evaluation_sample_table");
					},
	
	
			
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
														
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
										$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){


									


			},

			/**
			 * 提交前验证事件
			 * @param {Object} 请求参数
			 * @return {String} 验证成功返回null, 失败返回错误提示
			 */
			submit_check(param) {
				let msg = null
															return msg;
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/teaching_evaluation_methods/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/teaching_evaluation_methods/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/teaching_evaluation_methods/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/teaching_evaluation_methods/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/teaching_evaluation_methods/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
								},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}




</style>
