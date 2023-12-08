var html = new Vue({
	el:"#box",
	data:{
		search:"",
		subject:[]	//v-model이 같은 이름을 경우 배열기호 받으면 배열값을 저장이 됨
	},
	methods:{
		
	}
});

var html2 = new Vue({
	el:"#box2",
	data:{
		agree:""
	},
	methods:{
		aaa:function(){
			if(this.agree==""){
				alert("동의함에 체크 하셔야 합니다.");
			}
			else{
				//this.agree = "Y";
				f.submit();
				alert("동의 완료 되었습니다.");
			}
		}
	}
});