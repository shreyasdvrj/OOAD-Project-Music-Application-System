<html>
<style>
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,700&display=swap');
*,
 ::after,
 ::before {
    box-sizing: border-box;
}

body {
    padding: 0;
    margin: 0;
    background-color: #2F303A;
    font-family: 'Poppins', sans-serif;
    font-size: 1.2rem;
    color: #fff;
    min-height: 100vh;
}

.flex-height-grow {
    display: flex;
    flex-direction: column;
}


/**********************************************************
 global 
 ***********************************************************/


/* header */

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 40px;
}

a {
    text-decoration: none;
    color: #fff;
}

.logo {
    display: flex;
    align-items: center;
    font-size: 1.25em;
}

.logo h1 {
    margin-left: 1rem;
    margin: 0;
    font-size: 2.5rem;
    padding-left: 0.5rem;
    background: linear-gradient(to bottom, #1762A7, #BC3A80);
    -webkit-text-fill-color: transparent;
}


/* nav bar*/

.main-nav ul {
    display: flex;
    margin: 0;
    padding: 0;
    list-style: none;
}

.main-nav a {
    padding: 1rem;
}

.main-nav a:hover {
    color: #adadad;
}

.main-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 100px;
}

.title {
    font-weight: 500;
    font-size: 3em;
    margin-bottom: 0.6rem;
    margin-top: 120;
}

.sub-title {
    font-weight: 500;
    font-size: 1.2em;
    margin-top: 0;
    margin-bottom: 2rem;
}

.btn {
    background-color: #1762A7;
    padding: 0.7rem 1.5rem;
    border-radius: 0.6rem;
}


/*************************************************************
Home
***************************************************************/

.home-section {

    justify-content: space-between;
    flex-grow: 1;
}


.home-page-circle-1 {
    position: absolute;
    width: 20vw;
    height: 20vw;
    border-radius: 50%;
    bottom: 5vw;
    left: 5vw;
    background-color: rgba(188, 58, 128, 0.1);
    z-index: -1;
}

.home-page-circle-2 {
    position: absolute;
    width: 13vw;
    height: 13vw;
    border-radius: 50%;
    top: 20vh;
    left: 35vw;
    background-color: rgb(23, 98, 167, 0.1);
}

.home-page-circle-3 {
    position: absolute;
    overflow: hidden;
    width: 45vw;
    height: 45vw;
    bottom: 0;
    right: 0;
    z-index: -1;
}

.home-page-circle-3::before {
    content: '';
    transform: translate(40%, 40%);
    position: absolute;
    height: 100%;
    width: 100%;
    border-radius: 50%;
    background-color: rgb(52, 87, 178, .1);
}


/***************************************************
responsive
****************************************************/

@media screen and (max-width: 700px) {
    .main-header {
        flex-direction: column;
    }
    .home-section .image-section {
        display: none;
    }
    .home-section {
        justify-content: center;
    }
}
 
</style>


<body>

<header class="main-header">
        <a href="#/" class="logo">
            <img src="https://github.com/kyawmoehan/music-streaming-website/blob/master/images/logo.png?raw=true" alt="SoundWave logo">
        </a>
        <nav class="main-nav">
            <ul>
                <li><a href="song.jsp">Add Songs</a></li>
                <li><a href="podcast.jsp">Add Podcasts</a></li>
                <li><a href="view.jsp">View All</a></li>
            </ul>
        </nav>
    </header>
    <section class="home-section">
        <div class="image-section">
            <div class="lady-image"></div>
        </div>
        <div class="tex-section" style="text-align:center">
            <h1 class="title">Feel The Music</h1>
            <p class="sub-title">Music Platform</p>
        </div>
    </section>
    <div class="home-page-circle-1"></div>
    <div class="home-page-circle-2"></div>
    <div class="home-page-circle-3"></div>

</body>
</html>