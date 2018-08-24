# The Manager in LogCodeService

Initialize the container which holds all of log codes

```flow
st=>start: Find files
op1=>operation: Scan json file and Parse
op2=>operation: Save to container
st->op1->op2

```

The request to get message, it's same to get category

```flow
request=>start: GetMessage
op3=>operation: Search in the container
end=>end: Return message
request->op3->end
```



```

```





