.class public Lbr/com/topaz/heartbeat/signalinfo/b;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/heartbeat/signalinfo/a;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/l/e0;

.field private e:Lbr/com/topaz/u0/p;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/signalinfo/a;Lbr/com/topaz/u0/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p4, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->b:Lbr/com/topaz/heartbeat/signalinfo/a;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->c:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->d:Lbr/com/topaz/l/e0;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->e:Lbr/com/topaz/u0/p;

    return-void
.end method

.method private c()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->z()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->c:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string v2, "021"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/signalinfo/b;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->d:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->n()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->e:Lbr/com/topaz/u0/p;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->d:Lbr/com/topaz/l/e0;

    invoke-interface {v3}, Lbr/com/topaz/l/e0;->d()Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lbr/com/topaz/u0/p;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Ljava/util/LinkedList;

    :cond_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/topaz/heartbeat/signalinfo/a;

    iget-object v4, v3, Lbr/com/topaz/heartbeat/signalinfo/a;->a:Ljava/lang/String;

    iget-object v5, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->b:Lbr/com/topaz/heartbeat/signalinfo/a;

    iget-object v5, v5, Lbr/com/topaz/heartbeat/signalinfo/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->b:Lbr/com/topaz/heartbeat/signalinfo/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->d:Lbr/com/topaz/l/e0;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/signalinfo/b;->e:Lbr/com/topaz/u0/p;

    invoke-virtual {v2, v1}, Lbr/com/topaz/u0/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbr/com/topaz/l/e0;->e(Ljava/lang/String;)V

    return-void
.end method
