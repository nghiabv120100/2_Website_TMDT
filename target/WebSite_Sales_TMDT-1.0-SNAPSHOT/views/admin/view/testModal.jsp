
<script>
    $(’.item’).click(function(){
        $.ajax({
            content:‘text/html’,
        type:‘get’,
        dataType: “json”,
        url:’/product/update’,
        data:{
            id:id
        },
        success:function(data){
            var html_update=‘id:’+ data.id+‘name’ +data.name+‘price’+data.price
            $(’#modal_update .modal-body’).append(html_update)
            $(’#modal_update’).modal(‘show’)
        }
    })
    })</script>
