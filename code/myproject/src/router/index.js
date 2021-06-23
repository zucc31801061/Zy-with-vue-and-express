import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/views/home'
import News from '@/components/views/news'
import Shop from '@/components/views/shop'
import User from '@/components/views/user'
import ArticleDetail from '@/components/views/articledetail'
import MedicineDetail from '@/components/views/medicinedetail'
import ProductDetail from '@/components/views/productdetail'
import Login from '@/components/views/login'
import Register from '@/components/views/register'
import Index from '@/components/index'

Vue.use(Router)

// 需要左方向动画的路由用this.$router.to('****')
Router.prototype.togo = function(path) {
	this.isleft = true
	this.isright = false
	this.push(path)
}
// 需要右方向动画的路由用this.$router.goRight('****')
Router.prototype.goRight = function(path) {
	this.isright = true
	this.isleft = false
	this.push(path)
}
// 需要返回按钮动画的路由用this.$router.goBack()，返回上一个路由
Router.prototype.goBack = function() {
	this.isright = true
	this.isleft = false
	this.go(-1)
}
// 点击浏览器返回按钮执行，此时不需要路由回退
Router.prototype.togoback = function() {
	this.isright = true
	this.isleft = false
}
// 点击浏览器前进按钮执行
Router.prototype.togoin = function() {
	this.isright = false
	this.isleft = true
}

const routers = [{
		path: '/',
		name: 'Index',
		component: Index,
		redirect: '/home',
		children: [{
				path: '/home',
				name: 'Home',
				component: Home
			},
			{
				path: '/news',
				name: 'News',
				component: News
			},
			{
				path: '/shop',
				name: 'Shop',
				component: Shop
			},
			{
				path: '/user',
				name: 'User',
				component: User
			},
			{
				path: '/articledetail/:id',
				name: 'ArticleDetail',
				component: ArticleDetail
			},
			{
				path: '/medicinedetail/:id',
				name: 'MedicineDetail',
				component: MedicineDetail
			},
			{
				path: '/login',
				name: 'Login',
				component: Login
			},
			{
				path: '/register',
				name: 'Register',
				component: Register
			}
		]
	},
	{
		path: '/productdetail/:id',
		name: 'ProductDetail',
		component: ProductDetail,
	}
];

export default routers;
