@extends ('user/app')

@section ('bg-img',asset('user/img/home-bg.jpg'))

@section ('title','The journey to an unknown path')
@section ('sub-heading','Life and everything about life')

@section('main-content')

   <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                @foreach ($posts as $post)
                @if (Auth::guest())

                <div class="post-preview">
                    <a href="{{route('login')}}">
                        <h2 class="post-title">
                            {{$post->title}}
                        </h2>
                        <h3 class="post-subtitle">
                            {{$post->subtitle}}
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> {{$post->created_at->diffForHumans()}}</p>
                </div>

                @else
                <div class="post-preview">
                    <a href="{{route('post',$post->slug)}}">
                        <h2 class="post-title">
                            {{$post->title}}
                        </h2>
                        <h3 class="post-subtitle">
                            {{$post->subtitle}}
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> {{$post->created_at->diffForHumans()}}</p>
                </div>
                @endif
                @endforeach               
                <hr>
                <!-- Pager -->
                <ul class="pager">
                    <li class="next">

                        {{$posts->links()}}
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <hr>

@endsection