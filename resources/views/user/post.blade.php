@extends ('user/app')


@section ('bg-img',Storage::disk('local')->url($post->image))
@section ('title',$post->title)
@section ('sub-heading',$post->subtitle)

@section ('main-content')


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=222458554990257&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">

                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <small>Created at {{$post->created_at->diffForHumans()}}</small>

                    @foreach ($post->categories as $category)
                    <a href="{{route('category',$category->slug)}}"><small class="pull-right" style="margin-right:20px">
                        {{$category->name}}
                    </small></a>
                    @endforeach
                    {!!htmlspecialchars_decode($post->body)!!}
                    <h3>Tags</h3>
                    



                    @foreach ($post->tags as $tag)
                    <a href="{{route('tag',$tag->slug)}}""><small class="pull-left" style="margin-right:20px; border-radius:5px; border: 1px solid gray; padding:5px;">
                        {{$tag->name}}
                    </small></a>
                    @endforeach
                </div>
                <div class="fb-comments col-lg-offset-3" data-href="{{Request::url()}}" data-numposts="5"></div>
            </div>
        </div>
    </article>

    <hr>


@endsection