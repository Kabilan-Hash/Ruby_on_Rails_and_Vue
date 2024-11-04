

<script>
import  axios from 'axios'
export default{
  methods: {
      uploadFile() {
        this.Images = this.$refs.file.files[0];
      },
      submitFile() {
        const formData = new FormData();
        formData.append('file');
        const headers = { 'Content-Type': 'multipart/form-data' };
        axios.post('http://127.0.0.1:3000/resume_data/new', formData, { headers }).then((res) => {
          res.data.files;
          res.status; 
        });
      }
    }

}
</script>


<template>
  <h1>{{ name }}</h1>
  <p v-if="status">Yeah it's working</p>
  <form action="" method="post">
    <input type="file" name="resume" id="resume">
    <button type="submit" >Upload</button>
  </form>
  
</template>

