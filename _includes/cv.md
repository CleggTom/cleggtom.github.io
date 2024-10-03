<div class = "container">
{% for p in site.data.cv.positions%}
    <div class = "row my-1">
        <div class = "col-3">
            <h6> {{ p.date }} </h6>
        </div>
        <div class = "col">
           <b>  {{ p.title }} </b> 
           <br>
           {{ p.loc }}
        </div>
    </div>
{% endfor %}
</div>