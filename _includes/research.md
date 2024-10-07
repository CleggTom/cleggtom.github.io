<div class = "container">
  <h1>Research Interests </h1>
    {% for topic in site.data.research.main %}
        <div class="row my-2">
            <div class="col-3">
                <img class ="image.fluid m-auto" src="{{ topic.img }}" alt="Tom Clegg">
             </div>
            <div class="col">
                <h5>{{topic.title}}</h5>
                {{topic.text}}
                <h6>Selected Publications</h6>
                {% for paper in site.data.pubs.references %}
                    {% if paper.tag contains topic.title %}
                        {{ paper.title }}
                    {% endif %}
                {% endfor %}
             </div>
        </div> 
        <br>
    {% endfor %}
</div>