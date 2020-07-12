<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <h1>党建前端项目开发模板</h1>
    <div class="app__steps">
      <el-steps :active="active" align-center>
        <el-step title="本地开发调试"></el-step>
        <el-step title="上传代码仓库"></el-step>
        <el-step title="Rancher部署"></el-step>
      </el-steps>
    </div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      active: 0
    }
  }
}
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.app__steps {
  width: 500px;
  margin: 0 auto;
  text-align: left;
}
</style>
