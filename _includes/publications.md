<div class="container">
    <ul class="nav nav-tabs" id="myTab">
        <li class="nav-item">
            <a href="#publications" class="nav-link active" data-bs-toggle="tab">
              <h5>Publications</h5>
            </a>
        </li>
        <li class="nav-item">
            <a href="#talks" class="nav-link" data-bs-toggle="tab">
            <h5>Talks</h5>
            </a>
        </li>
    </ul>

  <div class="tab-content">
    <div class="tab-pane fade show active" id="publications">
      <br>
      {% assign years = "" %}      
        {% assign p = site.data.pubs.references | sort: 'issued' | reverse %}
        {% for link in p %}
        {% assign y = {{link.issued | split:"-"| first}}%}
          <div class="row" style="padding-bottom: 1em">
            <div class="col">
            {% unless years contains y %}
              <h5>{{ y }}</h5>
              {% assign years = years | append: y %}  
            {% endunless %}
              <a href="{{ link.doi }}"> {{ link.title }} </a> <br>
              {% for a in link.author%}
                {% if a.literal == "others" %}
                and others
                {% else %}
                  {% if a.family == "Clegg" %}
                  <b> {{ a.family }}, {{a.given | split: "" | first}}., </b>
                  {% else %}
                    {{ a.family }}, {{a.given | split: "" | first}}.,
                  {% endif %}
                {% endif %}
              {% endfor %} 
              <br>
              <em>{{link.container-title}}</em> {{link.issued | split:"-"| first}}
            </div>
          </div>
        {% endfor %}
      </div>
    <div class="tab-pane fade" id="talks">
    <br>
    {% for talk in site.data.talks.talks %}
    <div class = "pb-3">
      <b>{{ talk.date }} - {{ talk.loc }}</b> 
      <br>
      {{ talk.title }} 
    </div>
    {% endfor %}
    </div>
  </div>
  
</div>
