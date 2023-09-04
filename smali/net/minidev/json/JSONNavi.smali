.class public Lnet/minidev/json/JSONNavi;
.super Ljava/lang/Object;
.source "JSONNavi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lnet/minidev/json/JSONStyle;


# instance fields
.field private b:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/JSONStyle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONStyle;-><init>(I)V

    sput-object v0, Lnet/minidev/json/JSONNavi;->a:Lnet/minidev/json/JSONStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    .line 10
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    .line 12
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lnet/minidev/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lnet/minidev/json/JSONNavi;->i:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    .line 31
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    .line 33
    invoke-static {p1, p2}, Lnet/minidev/json/JSONValue;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    .line 34
    sget-object p1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {p1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->b:Lnet/minidev/json/writer/JsonReaderI;

    .line 35
    iget-object p1, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lnet/minidev/json/JSONNavi;->i:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    .line 19
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    .line 21
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    .line 23
    invoke-static {p1, p2}, Lnet/minidev/json/JSONValue;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lnet/minidev/json/JSONNavi;->b:Lnet/minidev/json/writer/JsonReaderI;

    .line 25
    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lnet/minidev/json/JSONNavi;->i:Z

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/JsonReaderI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    .line 5
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->b:Lnet/minidev/json/writer/JsonReaderI;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->getJPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 7
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/16 p1, 0x5b

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p1, 0x2f

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->h:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    instance-of p1, p1, Ljava/util/List;

    return p1
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method private e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 6
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public static newInstance()Lnet/minidev/json/JSONNavi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/JSONNavi;

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONNavi;-><init>(Lnet/minidev/json/writer/JsonReaderI;)V

    return-object v0
.end method

.method public static newInstanceArray()Lnet/minidev/json/JSONNavi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "Lnet/minidev/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/JSONNavi;

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    const-class v2, Lnet/minidev/json/JSONArray;

    invoke-virtual {v1, v2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONNavi;-><init>(Lnet/minidev/json/writer/JsonReaderI;)V

    .line 2
    invoke-virtual {v0}, Lnet/minidev/json/JSONNavi;->array()Lnet/minidev/json/JSONNavi;

    return-object v0
.end method

.method public static newInstanceObject()Lnet/minidev/json/JSONNavi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "Lnet/minidev/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/JSONNavi;

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    const-class v2, Lnet/minidev/json/JSONObject;

    invoke-virtual {v1, v2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONNavi;-><init>(Lnet/minidev/json/writer/JsonReaderI;)V

    .line 2
    invoke-virtual {v0}, Lnet/minidev/json/JSONNavi;->object()Lnet/minidev/json/JSONNavi;

    return-object v0
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->array()Lnet/minidev/json/JSONNavi;

    .line 2
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public array()Lnet/minidev/json/JSONNavi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "Can not create Array child in readonly"

    .line 3
    invoke-direct {p0, v0, v1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    .line 4
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isObject()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "can not use Object feature on Array."

    .line 7
    invoke-direct {p0, v0, v1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    :cond_3
    const-string v0, "Can not use current possition as Object"

    .line 8
    invoke-direct {p0, v0, v1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->b:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0}, Lnet/minidev/json/writer/JsonReaderI;->createArray()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 10
    :goto_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    invoke-direct {p0}, Lnet/minidev/json/JSONNavi;->f()V

    :goto_1
    return-object p0
.end method

.method public asBoolean()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public asBooleanObj()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public asDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public asDoubleObj()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public asFloat()D
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public asFloatObj()Ljava/lang/Float;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Float;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_2
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public asInt()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public asIntegerObj()Ljava/lang/Integer;
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 3
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 5
    :cond_1
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Ljava/lang/Long;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public asLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public asLongObj()Ljava/lang/Long;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 5
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at(I)Lnet/minidev/json/JSONNavi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/minidev/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 18
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "current node is not an Array"

    invoke-direct {p0, v0, p1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    check-cast v0, Ljava/util/List;

    if-gez p1, :cond_2

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p1, v1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 22
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_4

    .line 23
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    if-eqz v0, :cond_3

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Out of bound exception for index"

    invoke-direct {p0, v0, p1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 25
    :cond_3
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    return-object p0

    .line 29
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    iget-object v2, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 32
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public at(Ljava/lang/String;)Lnet/minidev/json/JSONNavi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isObject()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->object()Lnet/minidev/json/JSONNavi;

    .line 4
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v0, "current node is not an Object"

    .line 5
    invoke-direct {p0, v0, p1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current Object have no key named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    return-object p0

    .line 13
    :cond_4
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    iget-object v2, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 16
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public atNext()Lnet/minidev/json/JSONNavi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "current node is not an Array"

    .line 3
    invoke-direct {p0, v1, v0}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/minidev/json/JSONNavi;->at(I)Lnet/minidev/json/JSONNavi;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 7
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->array()Lnet/minidev/json/JSONNavi;

    .line 10
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "current node is not an List"

    invoke-direct {p0, v0, p1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isObject()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->object()Lnet/minidev/json/JSONNavi;

    .line 4
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v0, "current node is not an Object"

    .line 5
    invoke-direct {p0, v0, p1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->at(Ljava/lang/String;)Lnet/minidev/json/JSONNavi;

    .line 3
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->asDouble()D

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->up()Lnet/minidev/json/JSONNavi;

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->at(Ljava/lang/String;)Lnet/minidev/json/JSONNavi;

    .line 3
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->asInt()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->up()Lnet/minidev/json/JSONNavi;

    return p1
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->at(Ljava/lang/String;)Lnet/minidev/json/JSONNavi;

    .line 3
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->asIntegerObj()Ljava/lang/Integer;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->up()Lnet/minidev/json/JSONNavi;

    return-object p1
.end method

.method public getJPath()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v3, 0x2f

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v3, 0x5b

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isObject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lnet/minidev/json/JSONNavi;->at(Ljava/lang/String;)Lnet/minidev/json/JSONNavi;

    .line 3
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->asString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->up()Lnet/minidev/json/JSONNavi;

    return-object p1
.end method

.method public hasFailure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    return v0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isObject()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isObject()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public object()Lnet/minidev/json/JSONNavi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "Can not create Object child in readonly"

    .line 3
    invoke-direct {p0, v0, v1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    .line 4
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isObject()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "can not use Object feature on Array."

    .line 7
    invoke-direct {p0, v0, v1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    :cond_3
    const-string v0, "Can not use current possition as Object"

    .line 8
    invoke-direct {p0, v0, v1}, Lnet/minidev/json/JSONNavi;->b(Ljava/lang/String;Ljava/lang/Object;)Lnet/minidev/json/JSONNavi;

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->b:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0}, Lnet/minidev/json/writer/JsonReaderI;->createObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 10
    :goto_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    invoke-direct {p0}, Lnet/minidev/json/JSONNavi;->f()V

    :goto_1
    return-object p0
.end method

.method public root()Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 3
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->j:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->h:Ljava/lang/String;

    return-object p0
.end method

.method public set(Ljava/lang/Boolean;)Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 14
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 15
    :cond_0
    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Lnet/minidev/json/JSONNavi;->f()V

    return-object p0
.end method

.method public set(Ljava/lang/Number;)Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 11
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 12
    :cond_0
    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 13
    invoke-direct {p0}, Lnet/minidev/json/JSONNavi;->f()V

    return-object p0
.end method

.method public set(Ljava/lang/String;)Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 18
    :cond_0
    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 19
    invoke-direct {p0}, Lnet/minidev/json/JSONNavi;->f()V

    return-object p0
.end method

.method public set(Ljava/lang/String;D)Lnet/minidev/json/JSONNavi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;F)Lnet/minidev/json/JSONNavi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;I)Lnet/minidev/json/JSONNavi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;J)Lnet/minidev/json/JSONNavi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lnet/minidev/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Number;)Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->object()Lnet/minidev/json/JSONNavi;

    .line 5
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/minidev/json/JSONNavi;->object()Lnet/minidev/json/JSONNavi;

    .line 2
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/minidev/json/JSONNavi;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->h:Ljava/lang/String;

    sget-object v1, Lnet/minidev/json/JSONNavi;->a:Lnet/minidev/json/JSONStyle;

    invoke-static {v0, v1}, Lnet/minidev/json/JSONValue;->toJSONString(Ljava/lang/Object;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    invoke-static {v0}, Lnet/minidev/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lnet/minidev/json/JSONStyle;)Ljava/lang/String;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lnet/minidev/json/JSONNavi;->g:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/minidev/json/JSONValue;->toJSONString(Ljava/lang/Object;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/minidev/json/JSONValue;->toJSONString(Ljava/lang/Object;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public up()Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/minidev/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public up(I)Lnet/minidev/json/JSONNavi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/minidev/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_0

    .line 1
    iget-object p1, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnet/minidev/json/JSONNavi;->d:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/JSONNavi;->f:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lnet/minidev/json/JSONNavi;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move p1, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method
