<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','student_account') || $check_field('add','student_account') || $check_field('set','student_account')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学生账号" prop="student_account">
													<el-select v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','student_account')) || (!form['course_information_id'] && $check_field('add','student_account'))" id="student_account" v-model="form['student_account']" :disabled="disabledObj['student_account_isDisabled']">
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
								<el-select id="student_name" v-model="form['student_name']"
						v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','student_name')) || (!form['course_information_id'] && $check_field('add','student_name'))">
						<el-option v-for="o in list_student_name" :key="o['student_name']" :label="o['student_name']"
							:value="o['student_name']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','student_name')">{{form['student_name']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','student_id') || $check_field('add','student_id') || $check_field('set','student_id')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学生学号" prop="student_id">
								<el-select id="student_id" v-model="form['student_id']"
						v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','student_id')) || (!form['course_information_id'] && $check_field('add','student_id'))">
						<el-option v-for="o in list_student_id" :key="o['student_id']" :label="o['student_id']"
							:value="o['student_id']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','student_id')">{{form['student_id']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','teacher_account') || $check_field('add','teacher_account') || $check_field('set','teacher_account')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="教师账号" prop="teacher_account">
													<el-select v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','teacher_account')) || (!form['course_information_id'] && $check_field('add','teacher_account'))" id="teacher_account" v-model="form['teacher_account']" :disabled="disabledObj['teacher_account_isDisabled']">
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
								<el-select id="teachers_name" v-model="form['teachers_name']"
						v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','teachers_name')) || (!form['course_information_id'] && $check_field('add','teachers_name'))">
						<el-option v-for="o in list_teachers_name" :key="o['teachers_name']" :label="o['teachers_name']"
							:value="o['teachers_name']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','teachers_name')">{{form['teachers_name']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','teacher_id') || $check_field('add','teacher_id') || $check_field('set','teacher_id')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="教师工号" prop="teacher_id">
								<el-select id="teacher_id" v-model="form['teacher_id']"
						v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','teacher_id')) || (!form['course_information_id'] && $check_field('add','teacher_id'))">
						<el-option v-for="o in list_teacher_id" :key="o['teacher_id']" :label="o['teacher_id']"
							:value="o['teacher_id']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','teacher_id')">{{form['teacher_id']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','semester_name') || $check_field('add','semester_name') || $check_field('set','semester_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学期名称" prop="semester_name">
								<el-select id="semester_name" v-model="form['semester_name']"
						v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','semester_name')) || (!form['course_information_id'] && $check_field('add','semester_name'))">
						<el-option v-for="o in list_semester_name" :key="o['semester_name']" :label="o['semester_name']"
							:value="o['semester_name']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','semester_name')">{{form['semester_name']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','class_name') || $check_field('add','class_name') || $check_field('set','class_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="班级名称" prop="class_name">
								<el-select id="class_name" v-model="form['class_name']"
						v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','class_name')) || (!form['course_information_id'] && $check_field('add','class_name'))">
						<el-option v-for="o in list_class_name" :key="o['class_name']" :label="o['class_name']"
							:value="o['class_name']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','class_name')">{{form['class_name']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','course_name') || $check_field('add','course_name') || $check_field('set','course_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="课程名称" prop="course_name">
												<el-input id="course_name" v-model="form['course_name']" placeholder="请输入课程名称"
							  v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','course_name')) || (!form['course_information_id'] && $check_field('add','course_name'))" :disabled="disabledObj['course_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','course_name')">{{form['course_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','class_time') || $check_field('add','class_time') || $check_field('set','class_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="上课时间" prop="class_time">
								<el-input type="textarea" id="class_time" v-model="form['class_time']" placeholder="请输入上课时间"
						v-if="user_group === '管理员' || (form['course_information_id'] && $check_field('set','class_time')) || (!form['course_information_id'] && $check_field('add','class_time'))" :disabled="disabledObj['class_time_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','class_time')">{{form['class_time']}}</div>
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
				field: "course_information_id",
				url_add: "~/api/course_information/add?",
				url_set: "~/api/course_information/set?",
				url_get_obj: "~/api/course_information/get_obj?",
				url_upload: "~/api/course_information/upload?",

				query: {
					"course_information_id": 0,
				},

				form: {
								"student_account": 0, // 学生账号
										"student_name":  '', // 学生姓名
										"student_id":  '', // 学生学号
										"teacher_account": 0, // 教师账号
										"teachers_name":  '', // 教师姓名
										"teacher_id":  '', // 教师工号
										"semester_name":  '', // 学期名称
										"class_name":  '', // 班级名称
										"course_name":  '', // 课程名称
										"class_time":  '', // 上课时间
											"course_information_id": 0, // ID
						
				},
				disabledObj:{
								"student_account_isDisabled": false,
										"student_name_isDisabled": false,
										"student_id_isDisabled": false,
										"teacher_account_isDisabled": false,
										"teachers_name_isDisabled": false,
										"teacher_id_isDisabled": false,
										"semester_name_isDisabled": false,
										"class_name_isDisabled": false,
										"course_name_isDisabled": false,
										"class_time_isDisabled": false,
										},

	
					// 用户列表
				list_user_student_account: [],
								// 学生姓名选项列表
				list_student_name: [""],
	
						// 学生学号选项列表
				list_student_id: [""],
	
		
					// 用户列表
				list_user_teacher_account: [],
								// 教师姓名选项列表
				list_teachers_name: [""],
	
						// 教师工号选项列表
				list_teacher_id: [""],
	
						// 学期名称选项列表
				list_semester_name: [""],
	
						// 班级名称选项列表
				list_class_name: [""],
	
		
		
	
			}
		},
		methods: {


	
	
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
			 * 获取学生姓名列表
			 */
			async get_list_student_name() {
				var json = await this.$get("~/api/student_users/get_list?");
				if(json.result && json.result.list){
					this.list_student_name = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
	
			
				/**
			 * 获取学生学号列表
			 */
			async get_list_student_id() {
				var json = await this.$get("~/api/student_users/get_list?");
				if(json.result && json.result.list){
					this.list_student_id = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
	
			
	
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
			 * 获取教师姓名列表
			 */
			async get_list_teachers_name() {
				var json = await this.$get("~/api/teacher_users/get_list?");
				if(json.result && json.result.list){
					this.list_teachers_name = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
	
			
				/**
			 * 获取教师工号列表
			 */
			async get_list_teacher_id() {
				var json = await this.$get("~/api/teacher_users/get_list?");
				if(json.result && json.result.list){
					this.list_teacher_id = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
	
			
				/**
			 * 获取学期名称列表
			 */
			async get_list_semester_name() {
				var json = await this.$get("~/api/semester_management/get_list?");
				if(json.result && json.result.list){
					this.list_semester_name = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
	
			
				/**
			 * 获取班级名称列表
			 */
			async get_list_class_name() {
				var json = await this.$get("~/api/class_management/get_list?");
				if(json.result && json.result.list){
					this.list_class_name = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
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
					bl = this.$check_action('/course_information/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/course_information/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/course_information/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/course_information/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/course_information/view','get');
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
					this.get_list_user_student_account();
							this.get_list_student_name();
						this.get_list_student_id();
							this.get_list_user_teacher_account();
							this.get_list_teachers_name();
						this.get_list_teacher_id();
						this.get_list_semester_name();
						this.get_list_class_name();
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
