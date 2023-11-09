let images = $('body .imageSelect');
// console.log(images.length);
$('body .imageSelect').on('change',function(event){
    let isThis = this;
    let reader = new FileReader();
    reader.onload = function(){
        let output = isThis.closest('.imageChange').querySelector('.imagePreview');
        output.src = reader.result;
    };
    reader.readAsDataURL(event.target.files[0]);
});