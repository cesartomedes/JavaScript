<label id="re_order" for="re_order_checkbox" class="hidden">
    <input id="re_order_checkbox" type="checkbox" name="{$name}_refund_submit" class="hidden"/>{l s=' Refund order to user balance' mod='userbalance'}
</label>
<script>

{literal}
   
    $(document).ready(function(){

          $('#id_order_state').on('change', function(){

                if($(this).val()  == 7){

                    if(! $('#re_order_checkbox').is(':checked') ){
                        $('#re_order_checkbox').removeClass('hidden');
                        $('#re_order').removeClass('hidden');
                        $('#re_order_checkbox').click();
                    }

                   
                }else{

                     $('#re_order_checkbox').addClass('hidden');
                     $('#re_order').addClass('hidden');
                     if( $('#re_order_checkbox').is(':checked') == true ){

                        $('#re_order_checkbox').click();
                    }
                }
          });

    });
{/literal}
</script>