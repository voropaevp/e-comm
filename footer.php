<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">

						</div>
						<div class="col-md-6 text-center" style="margin-top:80px;">

							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
								Pavel Voropaev
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">

							</div>
						</div>

						<div class="clearfix visible-xs"></div>


					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->


			<!-- bottom footer -->

			<!-- /bottom footer -->
		</footer>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js?v=12"></script>
		<script src="js/actions.js?v=55655123412344"></script>
		<script src="js/sweetalert.min.js"></script>
<!-- 		<script src="js/jquery.payform.min.js" charset="utf-8"></script> -->
		<script src="js/jquery.da-share.js"></script>
    <script src="js/script.js?v=12"></script>
    <script src="https://cdn.rawgit.com/hilios/jQuery.countdown/2.0.4/dist/jquery.countdown.min.js"></script>

		<script>var c = 0;
        function menu(){
          if(c % 2 == 0) {
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu active";
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg active";
            c++;
              }else{
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu disable";
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg disable";
            c++;
              }
        }


</script>
    <script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>
	<script type="text/javascript">
var date = new Date()
date.setDate(date.getDate() + 1)

$('#clock').countdown(date).on('update.countdown', function (event) {
    var $this = $(this).html(
    	event.strftime('<ul class="hot-deal-countdown">' +
    		'<li><div><h3>%d</h3><span>Days</span></div></li> '
    		+
    		'<li><div><h3>%H</h3><span>Hours</span></div></li>'
    		+
    		'<li><div><h3>%M</h3><span>Minuts</span></div></li>'
    		+
    		'<li><div><h3>%S</h3><span>Secs</span></div></li>'
    		+'</ul>'));
});

</script>









