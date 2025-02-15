<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <a class="navbar-brand ml-5" href="#">Logo</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    {{ $style = 'font-weight: 600; color: bisque;' }}

    <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        </ul>

        <div class="d-flex navbar-nav">
            @if ($data == 'home')
                <li class="nav-item">
                    <a class="nav-link" style="{{ $style }}" href="/home">Home</a>
                </li>
                <li class="nav-item">
                    {{-- <a class="nav-link" href="#">Urgent</a> --}}
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/posts">Posts</a>
                </li>
            {{-- @elseif($data == 'urgent')
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="{{ $style }}" href="#">Urgent</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Dashboard</a>
                </li> --}}
            @elseif($data == 'dashboard')
                <li class="nav-item">
                    <a class="nav-link" href="/home">Home</a>
                </li>
                <li class="nav-item">
                    {{-- <a class="nav-link" href="#">Urgent</a> --}}
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="{{ $style }}" href="/postsDashboard</a>
                </li>
                &nbsp;&nbsp;
                <li class="nav-item">
                    <a class="btn btn-primary" href="{{route('createPost_UI')}}">Create Post</a>
                </li>
            @elseif($data == 'create_post')
                <li class="nav-item">
                    <a class="nav-link" href="/home">Home</a>
                </li>
                <li class="nav-item">
                    {{-- <a class="nav-link" href="#">Urgent</a> --}}
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/posts">Posts</a>
                </li>
            @else
                <li class="nav-item">
                    <a class="nav-link" href="/home">Home</a>
                </li>
                {{-- <li class="nav-item">
                    <a class="nav-link" href="#">Urgent</a>
                </li> --}}
                <li class="nav-item">
                    <a class="nav-link" href="/posts">Posts</a>
                </li>
            @endif


            @if (session()->has('user'))
                &nbsp;&nbsp;
                &nbsp;&nbsp;
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  style="color: #dfdfdf">
                        {{ session('user') }}
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="/logout">Log Out</a>
                    </div>
                    &nbsp;&nbsp;
                </div>
                &nbsp;&nbsp;
                &nbsp;
            @else
                &nbsp;
                &nbsp;&nbsp;
                &nbsp;
                <a href="{{ route('loadLogin') }}" class="btn btn-primary">Log In</a>
                &nbsp;
                &nbsp;
            @endif

        </div>
    </div>
</nav>
