<app>

<navbar user={user}></navbar>

  <div class="title" show={!user}>
    Find Your TRAVEL BUDDY
  </div>
  <profile1 show={user}></profile1>






<script>




   firebase.auth().onAuthStateChanged(userObj=> {
       console.log('userrrr',userObj)
   if (userObj) {
    // User is signed in.
       this.user=userObj;
   } else {
    // No user is signed in.
       this.user = null;
   }
    this.update();
   });

   let stopListening;


</script>

<style>
.title{
  cursor: pointer;
  display: block;
  width: 400px;
  height: 60px;
  line-height: 50px;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: 'PT Sans Narrow', sans-serif;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 35px;
  letter-spacing: 1px;
  position: fixed;
  top: 50%;
  left: 50%;
  margin-top: -20px;
  margin-left: -200px;
  color: #363537;
  border: 5px solid #363537;
  border-radius: 0;
  background: #85CB33;
  box-shadow: 0 0 0 #ED7D3A, 0 0 0 #EF2D56, 0 0 0 #2FBF71;
  transition: all .15s ease-in;
  text-align:center;
}
.title:hover {
  margin-top: -25px;
  margin-left: -210px;
  box-shadow: 5px 5px 0 #ED7D3A, 10px 10px 0 #EF2D56, 15px 15px 0 #2FBF71;
}



</style>
</app>
