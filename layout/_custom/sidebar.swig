<div class="hitokoto motion-element" id="hitokoto-loader">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script>
		$.get('https://sslapi.hitokoto.cn/?c=a', function (data) {
		data = JSON.parse(data);
		$('#hitokoto-content').css('display', '').text(data.hitokoto);
		if (data.from) {
		  $('#hitokoto-from').css('display', '').text('——' + data.from);
		}
		});
	</script>
	<div style="font-size: 1em;margin-top: 15px; line-height: 1.5em;" id="hitokoto-content"></div>
	<div style="text-align: right; margin-top: 15px; font-size: 0.9em; color: rgb(102, 102, 102);" id="hitokoto-from"></div>
</div>
