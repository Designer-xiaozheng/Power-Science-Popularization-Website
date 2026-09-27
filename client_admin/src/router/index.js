import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue';
import login from '../views/login.vue';
import forgot from '../views/forgot.vue';
Vue.use(VueRouter)

const routes = [
	// 主页
	{
		path: '/',
		name: 'index',
		component: index,
		meta: {
			index: 0,
			title: '首页'
		}
	},

	// 登录
	{
		path: '/login',
		name: 'login',
		component: login,
		meta: {
			index: 0,
			title: '登录'
		}
	},


	// 忘记密码
	{
		path: '/forgot',
		name: "forgot",
		component: forgot,
		meta: {
			index: 0,
			title: '忘记密码'
		}
	},

	// 修改密码
	{
		path: '/user/password',
		name: "password",
		component: () => import("../views/user/password.vue"),
		meta: {
			index: 0,
			title: '修改密码'
		}
	},

	// 视频播放页
	{
		path: "/media/video",
		name: "video",
		component: () => import('../views/media/video.vue'),
		meta: {
			index: 0,
			title: "视频"
		}
	},

	// 音频播放页
	{
		path: "/media/audio",
		name: "audio",
		component: () => import('../views/media/audio.vue'),
		meta: {
			index: 0,
			title: "音频"
		}
	},








	// 学生用户路由
	{
		path: '/student_users/table',
		name: 'student_users_table',
		component: () => import('../views/student_users/table.vue'),
		meta: {
			index: 0,
			title: '学生用户列表'
		}
	},
	{
		path: '/student_users/view',
		name: 'student_users_view',
		component: () => import('../views/student_users/view.vue'),
		meta: {
			index: 0,
			title: '学生用户详情'
		}
	},
	// 教师用户路由
	{
		path: '/teacher_users/table',
		name: 'teacher_users_table',
		component: () => import('../views/teacher_users/table.vue'),
		meta: {
			index: 0,
			title: '教师用户列表'
		}
	},
	{
		path: '/teacher_users/view',
		name: 'teacher_users_view',
		component: () => import('../views/teacher_users/view.vue'),
		meta: {
			index: 0,
			title: '教师用户详情'
		}
	},
	// 评教办法路由
	{
		path: '/teaching_evaluation_methods/table',
		name: 'teaching_evaluation_methods_table',
		component: () => import('../views/teaching_evaluation_methods/table.vue'),
		meta: {
			index: 0,
			title: '评教办法列表'
		}
	},
	{
		path: '/teaching_evaluation_methods/view',
		name: 'teaching_evaluation_methods_view',
		component: () => import('../views/teaching_evaluation_methods/view.vue'),
		meta: {
			index: 0,
			title: '评教办法详情'
		}
	},
	// 课程信息路由
	{
		path: '/course_information/table',
		name: 'course_information_table',
		component: () => import('../views/course_information/table.vue'),
		meta: {
			index: 0,
			title: '课程信息列表'
		}
	},
	{
		path: '/course_information/view',
		name: 'course_information_view',
		component: () => import('../views/course_information/view.vue'),
		meta: {
			index: 0,
			title: '课程信息详情'
		}
	},
	// 课程评价路由
	{
		path: '/course_evaluation/table',
		name: 'course_evaluation_table',
		component: () => import('../views/course_evaluation/table.vue'),
		meta: {
			index: 0,
			title: '课程评价列表'
		}
	},
	{
		path: '/course_evaluation/view',
		name: 'course_evaluation_view',
		component: () => import('../views/course_evaluation/view.vue'),
		meta: {
			index: 0,
			title: '课程评价详情'
		}
	},
	// 教师反馈路由
	{
		path: '/teacher_feedback/table',
		name: 'teacher_feedback_table',
		component: () => import('../views/teacher_feedback/table.vue'),
		meta: {
			index: 0,
			title: '教师反馈列表'
		}
	},
	{
		path: '/teacher_feedback/view',
		name: 'teacher_feedback_view',
		component: () => import('../views/teacher_feedback/view.vue'),
		meta: {
			index: 0,
			title: '教师反馈详情'
		}
	},
	// 学期管理路由
	{
		path: '/semester_management/table',
		name: 'semester_management_table',
		component: () => import('../views/semester_management/table.vue'),
		meta: {
			index: 0,
			title: '学期管理列表'
		}
	},
	{
		path: '/semester_management/view',
		name: 'semester_management_view',
		component: () => import('../views/semester_management/view.vue'),
		meta: {
			index: 0,
			title: '学期管理详情'
		}
	},
	// 班级管理路由
	{
		path: '/class_management/table',
		name: 'class_management_table',
		component: () => import('../views/class_management/table.vue'),
		meta: {
			index: 0,
			title: '班级管理列表'
		}
	},
	{
		path: '/class_management/view',
		name: 'class_management_view',
		component: () => import('../views/class_management/view.vue'),
		meta: {
			index: 0,
			title: '班级管理详情'
		}
	},

	// 用户路由
	{
		path: '/user/table',
		name: 'user_table',
		component: () => import('../views/user/table.vue'),
		meta: {
			index: 0,
			title: '用户列表'
		}
	},
	{
		path: '/user/view',
		name: 'user_view',
		component: () => import('../views/user/view.vue'),
		meta: {
			index: 0,
			title: '用户详情'
		}
	},
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue'),
		meta: {
			index: 0,
			title: '个人信息'
		}
	},
	// 用户组路由
	{
		path: '/user_group/table',
		name: 'user_group_table',
		component: () => import('../views/user_group/table.vue'),
		meta: {
			index: 0,
			title: '用户组列表'
		}
	},
	{
		path: '/user_group/view',
		name: 'user_group_view',
		component: () => import('../views/user_group/view.vue'),
		meta: {
			index: 0,
			title: '用户组详情'
		}
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.beforeEach((to, from, next) => {
	let token = to.query.token;
	if (token){
		$.db.set("token",token,120);
	}
	next();
})

router.afterEach((to, from, next) => {
	let title = "高校学生评教系统-admin";
	document.title = title;
})

export default router
