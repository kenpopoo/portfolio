/**
 * 
 */

function initial(){
	
	new Vue({
		el: '#msg',
		data: {
			message: 'this is Vue.js sample!',
			message2: '測試'
		}
	})
	
	new Vue({
		el: '.msg2',
		data: {
			message: 'this is Vue.js sample2!',
			message2: '測試2'
		}
	})
}

function initial2(){
	
	new Vue({
		el: '#msg',
		data: {
			message: 'this is Vue.js sample!',
			test1: ''
		},
		methods: {
			doAction: function(){
				var str = this.test1;
				this.message = 'you typed:<font color="red">'+str+'.</font>';
			}
		}
	})
}