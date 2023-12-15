<div class="directory-item{{if $entry.safe}} safe{{/if}}" id="directory-item-{{$entry.hash}}" >
	<div class="section-subtitle-wrapper clearfix">
	    




	    
	    
	    
	    
		<div class="directory-actions float-end">
			{{if $entry.censor_2}}
			<a class="directory-censor directory-censor-hide btn btn-outline-danger btn-sm {{$entry.censor_2_class}}" href="{{$entry.censor_2}}"> {{$entry.censor_2_label}}</a>
			{{/if}}
			{{if $entry.censor}}
			<a class="directory-censor directory-censor-unsafe btn btn-outline-warning btn-sm {{$entry.censor_class}}" href="{{$entry.censor}}"> {{$entry.censor_label}}</a>
			{{/if}}
			{{if $entry.ignlink}}
			<a class="directory-ignore btn btn-info btn-sm" href="{{$entry.ignlink}}"> {{$entry.ignore_label}}</a>
			{{/if}}
			{{if $entry.connect}}
			<a class="btn btn-success btn-sm" href="{{$entry.connect}}"><i class="fa fa-plus connect-icon"></i> {{$entry.conn_label}}</a>
			{{/if}}
		</div>
		<h3>{{if $entry.public_forum}}<i class="fa fa-comments-o" title="{{$entry.forum_label}} @{{$entry.nickname}}+"></i>&nbsp;{{/if}}<a href='{{$entry.profile_link}}' >{{$entry.name}}</a>{{if $entry.online}}&nbsp;<i class="fa fa-asterisk online-now" title="{{$entry.online}}"></i>{{/if}}</h3>
	</div>
	<div class="section-content-tools-wrapper directory-collapse">
		<div class="contact-photo-wrapper" id="directory-photo-wrapper-{{$entry.hash}}" style="min-width: 100px;" >
			<div class="contact-photo" id="directory-photo-{{$entry.hash}}" >
				<a href="{{$entry.profile_link}}" class="directory-profile-link" id="directory-profile-link-{{$entry.hash}}" >
					<img class="avatar avatar-lg" src="{{$entry.photo}}" alt="{{$entry.alttext}}" title="{{$entry.alttext}}" !loading="lazy"/>
					<!-- <img class="directory-photo-img" src="{{$entry.photo}}" alt="{{$entry.alttext}}" title="{{$entry.alttext}}" loading="lazy"/> -->
					<!-- <div class="avatar avatar-lg" style="background-image:url(&quot;https://directory.federatedhub.org/images/default_profile_photos/grey-circle/300.png&quot;);"></div> -->
				</a>
			</div>
		</div>
		

		
		
		<div class="contact-info">
		    
		    
			{{if $entry.common_friends}}
			<div id="dir-common" class="contact-info-element mb-3">
				<span class="contact-info-label">{{$entry.common_label}}</span> {{$entry.common_count}}
			</div>
			{{/if}}		                
                        

                        
		                    {{if $entry.pdesc}}
                                <p class="text-secondary! mb-3">
                                <span class="contact-info-label">{{$entry.pdesc_label}}</span> {{$entry.pdesc}}
                                </p>
                            {{/if}}

                                <div class="mt-0 list-inline list-inline-dots mb-0 !text-secondary d-sm-block d-none">
                                    {{if $entry.public_forum}}
                                  <div class="list-inline-item">
                                    
                                    <i class="fa fa-comments-o"></i> <b>Forum</b></div>
                                    {{/if}}
                                  <div class="list-inline-item">
                                    
                                    {{if $entry.public_forum}}
                                    <i class="fas fa5-users"></i> 
                                    {{else}}
                                    <i class="far fa5-address-card"></i> 
                                    {{/if}}
                                    
                                    <a href="{{$entry.profile_link}}" class="directory-profile-link" id="directory-profile-link-{{$entry.hash}}" target="_blank">{{$entry.address}}</a></div>
                                    {{if $entry.homepage}}
                                  <div class="list-inline-item">
                                    
                                    <i class="fas fa5-external-link-square-alt"></i> <a href="{{$entry.homepageurl}}" target="_blank" rel="ugc">{{$entry.homepageurl}}</a></div>
                                    {{/if}}
                                </div>
                                <div class="mt-3 list mb-0 !text-secondary d-block d-sm-none">
                                  <div class="list-item">
                                    
                                    Third Time Games</div>
                                  <div class="list-item">
                                    
                                    Full-time</div>
                                  <div class="list-item">
                                    
                                    Remote / North America</div>
                                </div>

<!--
                                <div class="mt-3 badges">
                                  <a href="#" class="badge badge-outline text-secondary fw-normal badge-pill">PHP</a>
                                  <a href="#" class="badge badge-outline text-secondary fw-normal badge-pill">Laravel</a>
                                  <a href="#" class="badge badge-outline text-secondary fw-normal badge-pill">React</a>
                                  <a href="#" class="badge badge-outline text-secondary fw-normal badge-pill">+8</a>
                                </div>
-->
<!--
                                <p class="!text-secondary mt-3">
                                  <span class="contact-info-label">{{$entry.about_label}}</span> {{$entry.about}}
                                </p>       
    -->                            
			{{if $entry.about}}
			<div class="contact-info-element mt-3">
				<span class="contact-info-label">{{$entry.about_label}}</span> {{$entry.about}}
			</div>
			{{/if}}                                

                                <div class="mt-3 list-inline list-inline-dots mb-0 !text-secondary d-sm-block d-none">
                                    {{if $entry.age}}
                                  <div class="list-inline-item">
                                    
                                    <span class="contact-info-label">{{$entry.age_label}}</span> {{$entry.age}}</div>
                                    {{/if}}
                                    {{if $entry.location}}
                                  <div class="list-inline-item">
                                    
                                  <span class="contact-info-label">{{$entry.location_label}}</span> {{$entry.location}}</div>
                                  {{/if}}
                                  {{if $entry.hometown}}
                                  <div class="list-inline-item">
                                    
                                  <span class="contact-info-label">{{$entry.hometown_label}}</span> {{$entry.hometown}}</div>
                                  {{/if}}
                                </div>
                                <div class="mt-3 list mb-0 !text-secondary d-block d-sm-none">
                                  <div class="list-item">
                                    
                                    Third Time Games</div>
                                  <div class="list-item">
                                    
                                    Full-time</div>
                                  <div class="list-item">
                                    
                                    Remote / North America</div>
                                </div>				    
		    

<!--
			{{if $entry.pdesc}}
			<div class="contact-info-element mt-3">
				<span class="contact-info-label">{{$entry.pdesc_label}}</span> {{$entry.pdesc}}
			</div>
			{{/if}}

			{{if $entry.age}}
			<div class="contact-info-element mt-3">
				<span class="contact-info-label">{{$entry.age_label}}</span> {{$entry.age}}
			</div>
			{{/if}}

			{{if $entry.location}}
			<div class="contact-info-element mt-3">
				<span class="contact-info-label">{{$entry.location_label}}</span> {{$entry.location}}
			</div>
			{{/if}}

			{{if $entry.hometown}}
			<div class="contact-info-element mt-3">
				<span class="contact-info-label">{{$entry.hometown_label}}</span> {{$entry.hometown}}
			</div>
			{{/if}}

			{{if $entry.homepage}}
			<div class="contact-info-element mt-3">
				<span class="contact-info-label">{{$entry.homepage}}</span> {{$entry.homepageurl}}
			</div>
			{{/if}}
-->
			{{if $entry.kw}}
			<div class="contact-info-element badges mt-3">
				<span class="contact-info-label">{{$entry.kw}}</span> {{$entry.keywords}}
			</div>
			{{/if}}
<!--
			{{if $entry.about}}
			<div class="contact-info-element mt-3">
				<span class="contact-info-label">{{$entry.about_label}}</span> {{$entry.about}}
			</div>
			{{/if}}
			-->
		</div>
	</div>
</div>
