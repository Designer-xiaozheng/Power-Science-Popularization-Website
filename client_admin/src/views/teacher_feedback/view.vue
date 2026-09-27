<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','teacher_account') || $check_field('add','teacher_account') || $check_field('set','teacher_account')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="教师账号" prop="teacher_account">
													<el-select v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','teacher_account')) || (!form['teacher_feedback_id'] && $check_field('add','teacher_account'))" id="teacher_account" v-model="form['teacher_account']" :disabled="disabledObj['teacher_account_isDisabled']">
							<el-option v-for="o in list_user_teacher_account" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','teacher_account')" id="teacher_account" v-model="form['teacher_account']" :disabled="true">
							<el-option v-for="o in list_user_teacher_account" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','teachers_name') || $check_field('add','teachers_name') || $check_field('set','teachers_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="教师姓名" prop="teachers_name">
												<el-input id="teachers_name" v-model="form['teachers_name']" placeholder="请输入教师姓名"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','teachers_name')) || (!form['teacher_feedback_id'] && $check_field('add','teachers_name'))" :disabled="disabledObj['teachers_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','teachers_name')">{{form['teachers_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','teacher_id') || $check_field('add','teacher_id') || $check_field('set','teacher_id')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="教师工号" prop="teacher_id">
												<el-input id="teacher_id" v-model="form['teacher_id']" placeholder="请输入教师工号"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','teacher_id')) || (!form['teacher_feedback_id'] && $check_field('add','teacher_id'))" :disabled="disabledObj['teacher_id_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','teacher_id')">{{form['teacher_id']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','student_account') || $check_field('add','student_account') || $check_field('set','student_account')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学生账号" prop="student_account">
													<el-select v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','student_account')) || (!form['teacher_feedback_id'] && $check_field('add','student_account'))" id="student_account" v-model="form['student_account']" :disabled="disabledObj['student_account_isDisabled']">
							<el-option v-for="o in list_user_student_account" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','student_account')" id="student_account" v-model="form['student_account']" :disabled="true">
							<el-option v-for="o in list_user_student_account" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','student_name') || $check_field('add','student_name') || $check_field('set','student_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学生姓名" prop="student_name">
												<el-input id="student_name" v-model="form['student_name']" placeholder="请输入学生姓名"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','student_name')) || (!form['teacher_feedback_id'] && $check_field('add','student_name'))" :disabled="disabledObj['student_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','student_name')">{{form['student_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','student_id') || $check_field('add','student_id') || $check_field('set','student_id')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学生学号" prop="student_id">
												<el-input id="student_id" v-model="form['student_id']" placeholder="请输入学生学号"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','student_id')) || (!form['teacher_feedback_id'] && $check_field('add','student_id'))" :disabled="disabledObj['student_id_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','student_id')">{{form['student_id']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','semester_name') || $check_field('add','semester_name') || $check_field('set','semester_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学期名称" prop="semester_name">
												<el-input id="semester_name" v-model="form['semester_name']" placeholder="请输入学期名称"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','semester_name')) || (!form['teacher_feedback_id'] && $check_field('add','semester_name'))" :disabled="disabledObj['semester_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','semester_name')">{{form['semester_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','course_name') || $check_field('add','course_name') || $check_field('set','course_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="课程名称" prop="course_name">
												<el-input id="course_name" v-model="form['course_name']" placeholder="请输入课程名称"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','course_name')) || (!form['teacher_feedback_id'] && $check_field('add','course_name'))" :disabled="disabledObj['course_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','course_name')">{{form['course_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','class_name') || $check_field('add','class_name') || $check_field('set','class_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="班级名称" prop="class_name">
												<el-input id="class_name" v-model="form['class_name']" placeholder="请输入班级名称"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','class_name')) || (!form['teacher_feedback_id'] && $check_field('add','class_name'))" :disabled="disabledObj['class_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','class_name')">{{form['class_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','overall_evaluation') || $check_field('add','overall_evaluation') || $check_field('set','overall_evaluation')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="整体评价" prop="overall_evaluation">
												<el-input id="overall_evaluation" v-model="form['overall_evaluation']" placeholder="请输入整体评价"
							  v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','overall_evaluation')) || (!form['teacher_feedback_id'] && $check_field('add','overall_evaluation'))" :disabled="disabledObj['overall_evaluation_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','overall_evaluation')">{{form['overall_evaluation']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','evaluate_courses') || $check_field('add','evaluate_courses') || $check_field('set','evaluate_courses')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="评价课程" prop="evaluate_courses">
								<el-input type="textarea" id="evaluate_courses" v-model="form['evaluate_courses']" placeholder="请输入评价课程"
						v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','evaluate_courses')) || (!form['teacher_feedback_id'] && $check_field('add','evaluate_courses'))" :disabled="disabledObj['evaluate_courses_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','evaluate_courses')">{{form['evaluate_courses']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','evaluate_teachers') || $check_field('add','evaluate_teachers') || $check_field('set','evaluate_teachers')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="评价教师" prop="evaluate_teachers">
								<el-input type="textarea" id="evaluate_teachers" v-model="form['evaluate_teachers']" placeholder="请输入评价教师"
						v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','evaluate_teachers')) || (!form['teacher_feedback_id'] && $check_field('add','evaluate_teachers'))" :disabled="disabledObj['evaluate_teachers_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','evaluate_teachers')">{{form['evaluate_teachers']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','teacher_response') || $check_field('add','teacher_response') || $check_field('set','teacher_response')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="教师回复" prop="teacher_response">
								<el-input type="textarea" id="teacher_response" v-model="form['teacher_response']" placeholder="请输入教师回复"
						v-if="user_group === '管理员' || (form['teacher_feedback_id'] && $check_field('set','teacher_response')) || (!form['teacher_feedback_id'] && $check_field('add','teacher_response'))" :disabled="disabledObj['teacher_response_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','teacher_response')">{{form['teacher_response']}}</div>
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
				field: "teacher_feedback_id",
				url_add: "~/api/teacher_feedback/add?",
				url_set: "~/api/teacher_feedback/set?",
				url_get_obj: "~/api/teacher_feedback/get_obj?",
				url_upload: "~/api/teacher_feedback/upload?",

				query: {
					"teacher_feedback_id": 0,
				},

				form: {
								"teacher_account": 0, // 教师账号
										"teachers_name":  '', // 教师姓名
										"teacher_id":  '', // 教师工号
										"student_account": 0, // 学生账号
										"student_name":  '', // 学生姓名
										"student_id":  '', // 学生学号
										"semester_name":  '', // 学期名称
										"course_name":  '', // 课程名称
										"class_name":  '', // 班级名称
										"overall_evaluation":  '', // 整体评价
										"evaluate_courses":  '', // 评价课程
										"evaluate_teachers":  '', // 评价教师
										"teacher_response":  '', // 教师回复
											"teacher_feedback_id": 0, // ID
						
				},
				disabledObj:{
								"teacher_account_isDisabled": false,
										"teachers_name_isDisabled": false,
										"teacher_id_isDisabled": false,
										"student_account_isDisabled": false,
										"student_name_isDisabled": false,
										"student_id_isDisabled": false,
										"semester_name_isDisabled": false,
										"course_name_isDisabled": false,
										"class_name_isDisabled": false,
										"overall_evaluation_isDisabled": false,
										"evaluate_courses_isDisabled": false,
										"evaluate_teachers_isDisabled": false,
										"teacher_response_isDisabled": false,
										},

	
					// 用户列表
				list_user_teacher_account: [],
				
		
		
					// 用户列表
				list_user_student_account: [],
				
		
		
		
		
		
		
		
		
	
			}
		},
		methods: {


	
	
				/**
			 * 获取教师用户用户列表
			 */
			async get_list_user_teacher_account() {
                // if(this.user_group !== "管理员" && this.form["teacher_account"] === 0) {
                //     this.form["teacher_account"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=教师用户");
                if(json.result && json.result.list){
                    this.list_user_teacher_account = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					get_user_teacher_account(id){
				var obj = this.list_user_teacher_account.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
			
	
				/**
			 * 获取学生用户用户列表
			 */
			async get_list_user_student_account() {
                // if(this.user_group !== "管理员" && this.form["student_account"] === 0) {
                //     this.form["student_account"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=学生用户");
                if(json.result && json.result.list){
                    this.list_user_student_account = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					get_user_student_account(id){
				var obj = this.list_user_student_account.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
			
	
			
	
			
	
			
	
			
	
			
	
			
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
														// 获取缓存数据附加
				form = $.db.get("form");
							$.push(this.form ,form);
									
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
					bl = this.$check_action('/teacher_feedback/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/teacher_feedback/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/teacher_feedback/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/teacher_feedback/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/teacher_feedback/view','get');
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
					this.get_list_user_teacher_account();
												this.get_list_user_student_account();
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
