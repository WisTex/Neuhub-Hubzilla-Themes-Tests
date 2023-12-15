<style>
    .page-header {
    display: flex;
    flex-wrap: wrap;
    min-height: 100px;
    flex-direction: column;
    justify-content: center;
    background-size: cover;
    background-position: 50%;
    overflow: hidden;
    position: relative;
    padding: 0;

}
    .card-body-profile {
    position: relative;
    margin-top: -4rem !important;
}
</style>

<div class="card card-profile p-3 mb-4">
    <div class="min-height-200 border-radius-xl page-header" style="background-image: url('https://dev.neuhub.org/images/default_cover_photos/hubzilla/850.png'); background-position-y: 100%;">
        <span class="mask bg-gradient-primary opacity-6"></span>
    </div>
    <div class="card card-body card-body-profile blur shadow-blur mx-4 mt-n6 overflow-hidden">
        <div class="row gx-4">
            <div class="col-auto">
                <div class="avatar avatar-xl position-relative">
                    <img src="https://demos.creative-tim.com/soft-ui-dashboard-pro/assets/img/bruce-mars.jpg" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
                </div>
            </div>
            <div class="col-auto my-auto">
                <div class="h-100">
                    <h5 class="mb-1">Scott M. Stolz</h5>
                    <p class="mb-0 font-weight-bold text-sm">
                        scott@biztechtonics.com</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 my-sm-auto ms-sm-auto ms-auto mt-3">
                <div class="d-flex justify-content-center mt-4">
                    <a href="#" class="btn btn-sm !btn-icon-only btn-facebook">Profile

                    </a>
                    <a href="#" class="btn btn-sm btn-icon-only btn-twitter ms-2">
                        Posts
                    </a>
                    <a href="#" class="btn btn-icon-only btn-github ms-2">
                        <i class="fab fa-github text-white" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-11 mx-auto">
            <h5 class="mb-2">About me</h5>
            <p>
                Simplifying your life doesn’t mean passing up opportunities.
                It means opening up space for new and considered ones.
            </p>
            <p class="mb-0">
                A fit body, a calm mind, a house full of love. These things cannot be bought - they must be earned.
            </p>
        </div>
    </div>
</div>


<!-- Begin Neuhub profile vcard -->

<style>
       .neuhub-card{

        // width: 380px;
        border: none;
        border-radius: 15px;
        // padding: 8px;
        background-color: #fff;
        position: relative;
        // height: 370px;
        margin-bottom: 15px;
       }

       .neuhub-upper{

        height: 100px;

       }

       .neuhub-upper img{

        width: 100%;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;

       }

       .neuhub-user{
        position: relative;
       }

       .neuhub-profile img{

        
        height: 80px;
        width: 80px;
        //margin-top:2px;

       
       }

       .neuhub-profile{

        position: absolute;
        top:-50px;
        left: 38%;
        height: 86px;
        width: 86px;
        border:3px solid #fff;
        // border:3px solid #eee;
        background-color: #fff;
        

        border-radius: 50%;

       }

       .neuhub-follow{

        border-radius: 15px;
        padding-left: 20px;
        padding-right: 20px;
        height: 35px;
       }

       .neuhub-stats span{

        font-size: 29px;
       }    
    
</style>


             
             <div class="neuhub-card">

              <div class="neuhub-upper">

                <!-- <img src="/view/theme/{{$profile.channel_theme}}/img/background-cover-blue-gold.png" class="img-fluid"> -->
				<img src="/view/theme/{{$profile.channel_theme}}/img/background-cover-blue-gradient.png" class="img-fluid">
                
              </div>

              <div class="neuhub-user text-center">

                <div class="neuhub-profile">

                  
                  <img src="{{$profile.photo}}?rev={{$profile.picdate}}"  alt="{{$profile.fullname}}" class="rounded-circle" width="82">
                  
                  
                </div>

              </div>



              <div class="mt-5 text-center p-3">

				<div class="!text-truncate">
					<strong class="fn p-name fs-5">{{$profile.fullname}}{{if $profile.online}}<i class="fa fa-fw fa-asterisk text-danger ps-2" title="{{$profile.online}}"></i>{{/if}}</strong>
				</div>
                
				<div class="text-truncate mb-3">
					<span class="text-muted p-adr">{{$profile.reddress}}</span>
				</div>                

				{{if $connect}}
				<div class="mt-1 mb-3">
					<a href="{{$connect_url}}" class="!btn !btn-success !btn-sm" rel="nofollow" {{if !$localuser}}target="_blank"{{/if}}>
						<button class="btn btn-primary btn-sm neuhub-follow"><!-- <i class="fa fa-plus"></i> -->{{$connect}}{{if !$localuser}} <i class="fa fa-external-link"></i>{{/if}}</button>
					</a>
				</div>
				{{/if}}


{{if $details}}
		{{if $profile.pdesc}}
		<div class="mb-3 pb-1">{{$profile.pdesc}}</div>
		{{/if}}
                
		{{if $location}}
		<dl class="mb-0 pb-1">
			<dt class="location-label">{{$location}}</dt>
			<dd class="adr h-adr">
				{{if $profile.address}}
				<div class="street-address p-street-address">{{$profile.address}}</div>
				{{/if}}
				<div class="city-state-zip">
					<span class="postal-code p-postal-code">{{$profile.postal_code}}</span>
					<span class="locality p-locality">{{$profile.locality}}</span>
				</div>
				{{if $profile.region}}
				<div class="region p-region">{{$profile.region}}</div>
				{{/if}}
				{{if $profile.country_name}}
				<div class="country-name p-country-name">{{$profile.country_name}}</div>
				{{/if}}
			</dd>
		</dl>
		{{/if}}
		{{if $hometown}}
		<dl class="mb-0 pb-1">
			<dt class="hometown-label">{{$hometown}}</dt>
			<dd class="p-hometown">{{$profile.hometown}}</dd>
		</dl>
		{{/if}}
		{{if $gender}}
		<dl class="mb-0 pb-1">
			<dt class="gender-label">{{$gender}}</dt>
			<dd class="p-gender">{{if $profile.gender_icon}}<i class="fa fa-{{$profile.gender_icon}}"></i>&nbsp;{{/if}}{{$profile.gender}}</dd>
		</dl>
		{{/if}}
		{{if $marital}}
		<dl class="mb-0 pb-1">
			<dt class="marital-label"><span class="heart"><i class="fa fa-heart"></i>&nbsp;</span>{{$marital}}</dt>
			<dd class="marital-text">{{$profile.marital}}</dd>
		</dl>
		{{/if}}
		{{if $homepage}}
		<dl class="mb-0 pb-1">
			<dt class="homepage-label">{{$homepage}}</dt>
			<dd class="homepage-url u-url text-truncate">{{$profile.homepage}}</dd>
		</dl>
		{{/if}}

		<dl class="mb-0 pb-1">
			<dt class="homepage-label">Channel</dt>
			<dd class="homepage-url u-url text-truncate"><a href="/channel/{{$profile.channel_address}}">Posts</a> ~ <a href="/profile/{{$profile.channel_address}}">Profile</a></dd>
		</dl>
		
        <div class="hcard-addon"></div>
	{{/if}}



                <!-- <div class="d-flex justify-content-between align-items-center mt-4 px-4">

                  <div class="neuhub-stats">
                    <h6 class="mb-0">Followers</h6>
                    <span>8,797</span>

                  </div>


                  <div class="neuhub-stats">
                    <h6 class="mb-0">Projects</h6>
                    <span>142</span>

                  </div>


                  <div class="neuhub-stats">
                    <h6 class="mb-0">Ranks</h6>
                    <span>129</span>

                  </div>
                  
                </div> -->
                
              </div>
               
             </div>

{{if $details}}
{{$chanmenu}}
{{$contact_block}}
{{/if}}

<!-- End Neuhub profile vcard -->

<!-- Begin Redbasic profile vcard -->
{{* This is the code for the old version of the vcard. *}}
{{* It gives you an example of the fields that you can use. *}}

<!--
<div class="rounded mb-3 vcard-card h-card">
	<div class="card mb-2">
		<div class="row">
			<div class="col-4" style="width: fit-content;">
				<div id="profile-photo-wrapper">
					<img class="rounded-start u-photo" src="{{$profile.photo}}?rev={{$profile.picdate}}" alt="{{$profile.fullname}}" style="width: 6rem; height:6rem;">
				</div>
			</div>
			<div class="col-7 m-1 p-0">
				{{if $editmenu.multi}}
				<div class="dropdown float-end">
					<a class="profile-edit-side-link float-end" data-bs-toggle="dropdown" href="#" ><i class="fa fa-pencil" title="{{$editmenu.edit.1}}"></i></a>
					<div class="dropdown-menu dropdown-menu-end" role="menu">
						{{foreach $editmenu.menu.entries as $e}}
						<a href="profiles/{{$e.id}}" class="dropdown-item"><img class="menu-img-1" src='{{$e.photo}}'> {{$e.profile_name}}</a>
						{{/foreach}}
						{{if $editmenu.menu.cr_new}}
						<a href="profiles/new" id="profile-listing-new-link" class="dropdown-item">{{$editmenu.menu.cr_new}}</a>
						{{/if}}
					</div>
				</div>
				{{elseif $editmenu}}
				<a class="profile-edit-side-link float-end" href="{{$editmenu.edit.0}}" ><i class="fa fa-pencil" title="{{$editmenu.edit.1}}"></i></a>
				{{/if}}

				<div class="text-truncate">
					<strong class="fn p-name">{{$profile.fullname}}{{if $profile.online}}<i class="fa fa-fw fa-asterisk text-danger ps-2" title="{{$profile.online}}"></i>{{/if}}</strong>
				</div>
				<div class="text-truncate">
					<small class="text-muted p-adr">{{$profile.reddress}}</small>
				</div>
				{{if $connect}}
				<div class="mt-1">
					<a href="{{$connect_url}}" class="btn btn-success btn-sm" rel="nofollow">
						<i class="fa fa-plus"></i> {{$connect}}
					</a>
				</div>
				{{/if}}
			</div>
		</div>
	</div>
	{{if $details}}
	<div class="vcard ps-2 pe-2">
		{{if $profile.pdesc}}
		<div class="mb-2">{{$profile.pdesc}}</div>
		{{/if}}
		{{if $location}}
		<dl class="mb-0 pb-1">
			<dt class="location-label">{{$location}}</dt>
			<dd class="adr h-adr">
				{{if $profile.address}}
				<div class="street-address p-street-address">{{$profile.address}}</div>
				{{/if}}
				<div class="city-state-zip">
					<span class="postal-code p-postal-code">{{$profile.postal_code}}</span>
					<span class="locality p-locality">{{$profile.locality}}</span>
				</div>
				{{if $profile.region}}
				<div class="region p-region">{{$profile.region}}</div>
				{{/if}}
				{{if $profile.country_name}}
				<div class="country-name p-country-name">{{$profile.country_name}}</div>
				{{/if}}
			</dd>
		</dl>
		{{/if}}
		{{if $hometown}}
		<dl class="mb-0 pb-1">
			<dt class="hometown-label">{{$hometown}}</dt>
			<dd class="p-hometown">{{$profile.hometown}}</dd>
		</dl>
		{{/if}}
		{{if $gender}}
		<dl class="mb-0 pb-1">
			<dt class="gender-label">{{$gender}}</dt>
			<dd class="p-gender">{{if $profile.gender_icon}}<i class="fa fa-{{$profile.gender_icon}}"></i>&nbsp;{{/if}}{{$profile.gender}}</dd>
		</dl>
		{{/if}}
		{{if $marital}}
		<dl class="mb-0 pb-1">
			<dt class="marital-label"><span class="heart"><i class="fa fa-heart"></i>&nbsp;</span>{{$marital}}</dt>
			<dd class="marital-text">{{$profile.marital}}</dd>
		</dl>
		{{/if}}
		{{if $homepage}}
		<dl class="mb-0 pb-1">
			<dt class="homepage-label">{{$homepage}}</dt>
			<dd class="homepage-url u-url">{{$profile.homepage}}</dd>
		</dl>
		{{/if}}
		<div class="hcard-addon"></div>
	</div>
	{{/if}}
</div>
{{if $details}}
{{$chanmenu}}
{{$contact_block}}
{{/if}}

-->
<!-- End Redbasic profile vcard -->