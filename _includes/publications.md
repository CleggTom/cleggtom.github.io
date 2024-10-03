<div class="container">
  <h1>Publications </h1>
  {% assign p = site.data.pubs.references | sort: 'issued' | reverse %}
  {% for link in p %}
    <div class="row" style="padding-bottom: 1em">
      <div class="col">
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
        {% endfor %} <br>
        <em>{{link.container-title}}</em> {{link.issued}}
      </div>
    </div>
  {% endfor %}
</div>
