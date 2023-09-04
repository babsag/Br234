.class public Lnet/minidev/json/writer/CompessorMapper;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "CompessorMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/minidev/json/writer/JsonReaderI<",
        "Lnet/minidev/json/writer/CompessorMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/Appendable;

.field private c:Lnet/minidev/json/JSONStyle;

.field private d:Ljava/lang/Boolean;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/minidev/json/writer/CompessorMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lnet/minidev/json/writer/CompessorMapper;->e:Z

    .line 4
    iput-boolean p1, p0, Lnet/minidev/json/writer/CompessorMapper;->f:Z

    .line 5
    iput-boolean p1, p0, Lnet/minidev/json/writer/CompessorMapper;->g:Z

    .line 6
    iput-object p2, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    .line 7
    iput-object p3, p0, Lnet/minidev/json/writer/CompessorMapper;->c:Lnet/minidev/json/JSONStyle;

    .line 8
    iput-object p4, p0, Lnet/minidev/json/writer/CompessorMapper;->d:Ljava/lang/Boolean;

    return-void
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/writer/CompessorMapper;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnet/minidev/json/writer/CompessorMapper;->e:Z

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Lnet/minidev/json/writer/CompessorMapper;

    iget-boolean v0, p1, Lnet/minidev/json/writer/CompessorMapper;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lnet/minidev/json/writer/CompessorMapper;->g:Z

    .line 4
    invoke-direct {p1}, Lnet/minidev/json/writer/CompessorMapper;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    const/16 v1, 0x7d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iput-boolean v0, p0, Lnet/minidev/json/writer/CompessorMapper;->e:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p1}, Lnet/minidev/json/writer/CompessorMapper;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    const/16 v1, 0x5d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 9
    iput-boolean v0, p0, Lnet/minidev/json/writer/CompessorMapper;->e:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->d:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lnet/minidev/json/writer/CompessorMapper;

    return p1
.end method

.method private e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->d:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Lnet/minidev/json/writer/CompessorMapper;

    iget-boolean v0, p1, Lnet/minidev/json/writer/CompessorMapper;->f:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lnet/minidev/json/writer/CompessorMapper;->f:Z

    .line 4
    invoke-direct {p1}, Lnet/minidev/json/writer/CompessorMapper;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iput-boolean v1, p0, Lnet/minidev/json/writer/CompessorMapper;->e:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p1}, Lnet/minidev/json/writer/CompessorMapper;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 9
    iput-boolean v1, p0, Lnet/minidev/json/writer/CompessorMapper;->e:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/writer/CompessorMapper;->a()V

    .line 2
    invoke-direct {p0}, Lnet/minidev/json/writer/CompessorMapper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->c:Lnet/minidev/json/JSONStyle;

    invoke-virtual {v0, p1}, Lnet/minidev/json/JSONStyle;->mustProtectKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    iget-object v2, p0, Lnet/minidev/json/writer/CompessorMapper;->c:Lnet/minidev/json/JSONStyle;

    invoke-static {p1, v0, v2}, Lnet/minidev/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    .line 7
    iget-object p1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 8
    :goto_0
    iget-object p1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->c:Lnet/minidev/json/JSONStyle;

    iget-object v1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lnet/minidev/json/JSONStyle;->writeString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    iget-object v1, p0, Lnet/minidev/json/writer/CompessorMapper;->c:Lnet/minidev/json/JSONStyle;

    invoke-static {p1, v0, v1}, Lnet/minidev/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/writer/CompessorMapper;->a()V

    .line 2
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/CompessorMapper;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->convert(Ljava/lang/Object;)Lnet/minidev/json/writer/CompessorMapper;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Lnet/minidev/json/writer/CompessorMapper;
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->d:Ljava/lang/Boolean;

    .line 2
    :try_start_0
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/CompessorMapper;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lnet/minidev/json/writer/CompessorMapper;->d:Ljava/lang/Boolean;

    .line 2
    :try_start_0
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/CompessorMapper;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lnet/minidev/json/writer/CompessorMapper;->d(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lnet/minidev/json/writer/CompessorMapper;->a()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/CompessorMapper;->g(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3}, Lnet/minidev/json/writer/CompessorMapper;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/CompessorMapper;->f(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->g(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lnet/minidev/json/writer/CompessorMapper;

    iget-object v0, p0, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    iget-object v2, p0, Lnet/minidev/json/writer/CompessorMapper;->c:Lnet/minidev/json/JSONStyle;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v2, v3}, Lnet/minidev/json/writer/CompessorMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;Ljava/lang/Boolean;)V

    .line 4
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->f(Ljava/lang/Object;)V

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/CompessorMapper;->f(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->g(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lnet/minidev/json/writer/CompessorMapper;

    iget-object v0, p0, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, p0, Lnet/minidev/json/writer/CompessorMapper;->b:Ljava/lang/Appendable;

    iget-object v2, p0, Lnet/minidev/json/writer/CompessorMapper;->c:Lnet/minidev/json/JSONStyle;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v2, v3}, Lnet/minidev/json/writer/CompessorMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;Ljava/lang/Boolean;)V

    .line 4
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/CompessorMapper;->f(Ljava/lang/Object;)V

    return-object p1
.end method
