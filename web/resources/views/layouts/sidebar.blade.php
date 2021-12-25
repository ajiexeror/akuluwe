                    <nav class="pcoded-navbar">
                        <div class="nav-list">
                            <div class="pcoded-inner-navbar main-menu">
                                <div class="pcoded-navigation-label">Navigation</div>
                                <ul class="pcoded-item pcoded-left-item">

                                    @foreach($sideBarMenu as $key => $value)
                                        <li class="">
                                            <a href="{{ $value->node }}" class="waves-effect waves-dark">
                                                <span class="pcoded-micon">
                                                    <i class="{{ $value->icon }}"></i>
                                                </span>
                                                <span class="pcoded-mtext">{{ $value->content_name }}</span>
                                            </a>
                                        </li>
                                    @endforeach

                                </ul>
                            </div>
                        </div>
                    </nav>