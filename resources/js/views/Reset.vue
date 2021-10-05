<template>
<div >
  <span v-show="show">
  <Header/>
    <Index/>
  <Footer/>
  </span>
<span v-show="show==false">
  
  
   <div class="fh5co-loader"></div>
</span>
</div>

</template>
<script>

import Footer from '../components/footer';
import Index from '../components/Account/reset';
import Header from '../components/Account/header';
export default {
  data(){
    return {
      show:false
    }
  },
 
components:{
    Footer,Header,Index
},
beforeMount(){
  setTimeout(() => {
    this.show = true
  },700) 

}
}
</script>