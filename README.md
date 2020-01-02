# honest-profiler + hprof2flamegraph for java flame graph

## how to running

* build docker image

```code
docker-compose build
```

* start docker-compose service

```code
docker-compose up -d
```

* install hprof2flamegraph pip package

> with python venv module && python 3

```code
cd hprof2flamegraph
python -m venv venv
source venv/bin/activate
pip install hprof2flamegraph
```

* generate stackcollapse

> use hprof2flamegraph && in hprof2flamegraph dir

```code
hprof2flamegraph/venv/bin/stackcollapse-hpl logs/log.hpl > out/output-folded.txt
```

* generate flame graph

```code
hprof2flamegraph/venv/bin/flamegraph.pl out/output-folded.txt > out/output.svg
```

* view result

```code
open svg image
```