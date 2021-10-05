<template>
  <div>
   <div class="container">
	<div class="row">
		<div class="login-wrap"> 
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">reset</label>
				<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
				<input id="tab-3" type="radio" name="tab" class="reset-password"><label for="tab-3" class="tab"></label>
				<!-- <input id="tab-4" type="radio" name="tab" class="reset-password"><label for="tab-4" class="tab"></label> -->
				<div class="login-form">
					<div class="sign-in-htm">
							<form @submit.prevent="reset" @keydown="form.onKeydown($event)">
							
							<div v-if="form.token">
							<div class="group">
								<input v-model="form.password" type="text" class="input" placeholder="PASSWORD">
    							
							</div>
							<div class="group">
								<input v-model="form.password_confirmation" type="text" class="input" placeholder="CONFIRM PASSWORD">
    							
							</div>
							<div class="group">
								
								<input :disabled="form.busy" type="submit" class="button" :value= "resetPasswordPlaceholder">
							</div>
							</div>
							<div v-else>
								<div class="group">
								
								<router-link to="/account"> <input  class="button center" value= "Back to login"> </router-link>
							</div>
							</div>
							<div class="hr"></div>
							
						</form>
					</div>
					<div class="sign-up-htm">
						
					</div>
					
					
				</div>
			</div>
		</div>
	</div>
</div>
  </div>
</template>
<style scoped>
 .center{
	 text-align: center;
	 cursor: pointer;
 }
</style>
<script>
import {validateResetPassData} from '../Utils/validator.js'
import {request} from '../../mixins/sendRequest.js'
import { mapGetters, mapActions } from "vuex";
import toastr from 'toastr'


export default {
	name:'AccountIndex',
	data(){
		return {
			
			//Create a new form instance
			form: new Form({
				token: this.$route.params.token,
				password:'',
				password_confirmation:''
				
			})
		}
	},
	beforeMount(toastr){
		this.expired();
	},
	
	mixins:[request],
	methods:{
		
		expired(t){
			
			
			if (this.$route.params.token == undefined){
				toastr.error("Sorry the token has expired","Invalid",{timeOut: 5000});
				this.$router.push('/account');
			};
		},
		reset(){
		
			let check = validateResetPassData({password:this.form.password,password_confirmation:this.form.password_confirmation});
			
			if(check.valid == false){
				if(check.errors.password) return toastr.error(check.errors.password,"Missing Field",{timeOut: 5000});
				if(check.errors.password_confirmation) return toastr.error(check.errors.password_confirmation,"Missing Field",{timeOut: 5000});
				if(check.errors.match) return toastr.error(check.errors.match,"Missing Field",{timeOut: 5000});
				if(check.errors.length) return toastr.error(check.errors.length,"Missing Field",{timeOut: 5000});

			}
			this.showLoader();
			//Submit the form
			this.form.post('/api/update-password').then(({data}) => {
				this.hideLoader();
				toastr.success("Password has been changed, you can now log in to your account","Success",{timeOut: 5000});
				
				
				this.$router.push('/account');
				
			}).catch((err) => {
				this.hideLoader();
				
				if(err.response.status == 500 ){
					

				}
				else if(err.response.status == 401 ) {

					toastr.error(this.form.errors.errors.error,"Invalid",{timeOut: 5000});
					return this.$router.push('/account');
					} 
				else{
						return toastr.error('An unknown error occured, please try again later',"Error",{timeOut: 5000});
				
					}
				
			})
		}
		}
}
</script>