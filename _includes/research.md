<div class = "container">
  <h1>Research Interests </h1>
    {% for topic in site.data.research.main %}
        <div class="row my-2">
            <div class="col-3">
                <img class ="image.fluid" src="{{ topic.img }}" alt="Tom Clegg">
             </div>
            <div class="col">
                <h5>{{topic.title}}</h5>
                {{topic.text}}
             </div>
        </div> 
        <br>
    {% endfor %}
</div>