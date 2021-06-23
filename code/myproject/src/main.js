// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue';
import App from './App';
import VueRouter from 'vue-router';
import Routers from './router';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import Vuex from 'vuex'

Vue.use(Vuex);
Vue.use(VueRouter);
Vue.use(ElementUI);
Vue.config.productionTip = false

// 路由配置
const RouterConfig = {
	// 使用 HTML5 的 History 路由模式
	mode: 'history',
	routes: Routers,
	scrollBehavior(to, from, savedPosition) {
		if (savedPosition) {
			return savedPosition
		} else {
			return {
				x: 0,
				y: 0
			}
		}
	}
};
const router = new VueRouter(RouterConfig);

router.beforeEach((to, from, next) => {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
	window.scrollTo(0, 0);
	next();
});

router.afterEach((to, from, next) => {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
	window.scrollTo(0, 0);
});

/* eslint-disable no-new */
new Vue({
	el: '#app',
	router,
	components: {
		App
	},
	template: '<App/>'
})
