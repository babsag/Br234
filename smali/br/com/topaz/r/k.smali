.class public Lbr/com/topaz/r/k;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/r/k$c;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/r/k$c;

.field private c:Lbr/com/topaz/l/l;

.field private d:Lbr/com/topaz/f0/c;

.field private e:Lbr/com/topaz/l/f0;

.field private f:Lbr/com/topaz/m0/d;

.field private g:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lbr/com/topaz/u0/p;

.field private j:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private k:Lbr/com/topaz/k/c;

.field private l:Lbr/com/topaz/r/g;

.field private m:I

.field private n:Lbr/com/topaz/r/h;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Ljava/util/HashMap;Lbr/com/topaz/u0/p;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/k/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/r/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/s/a;",
            "Lbr/com/topaz/l/l;",
            "Lbr/com/topaz/f0/c;",
            "Lbr/com/topaz/l/f0;",
            "Lbr/com/topaz/m0/d;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbr/com/topaz/u0/p;",
            "Lbr/com/topaz/heartbeat/crypto/MidCrypt;",
            "Lbr/com/topaz/k/c;",
            "Lbr/com/topaz/heartbeat/utils/OFDException;",
            "Lbr/com/topaz/r/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    iput-object p3, p0, Lbr/com/topaz/r/k;->d:Lbr/com/topaz/f0/c;

    iput-object p4, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    iput-object p5, p0, Lbr/com/topaz/r/k;->f:Lbr/com/topaz/m0/d;

    iput-object p10, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p6, p0, Lbr/com/topaz/r/k;->h:Ljava/util/HashMap;

    iput-object p7, p0, Lbr/com/topaz/r/k;->i:Lbr/com/topaz/u0/p;

    iput-object p8, p0, Lbr/com/topaz/r/k;->j:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p9, p0, Lbr/com/topaz/r/k;->k:Lbr/com/topaz/k/c;

    iput-object p11, p0, Lbr/com/topaz/r/k;->l:Lbr/com/topaz/r/g;

    const/4 p1, 0x0

    iput p1, p0, Lbr/com/topaz/r/k;->m:I

    return-void
.end method

.method private a(Ljava/lang/String;)Lbr/com/topaz/l/k;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/k;->i:Lbr/com/topaz/u0/p;

    const-class v1, Lbr/com/topaz/l/k;

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/u0/p;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/l/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lbr/com/topaz/l/k;

    iget-object v1, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->X()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lbr/com/topaz/l/k;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    :goto_0
    return-object v0
.end method

.method private a(Lbr/com/topaz/l/g;)Lbr/com/topaz/r/h;
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/r/k;->n:Lbr/com/topaz/r/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbr/com/topaz/l/g;->W()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v1}, Lbr/com/topaz/l/l;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->P()Lbr/com/topaz/heartbeat/sensors/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/sensors/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->P()Lbr/com/topaz/heartbeat/sensors/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/sensors/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->P()Lbr/com/topaz/heartbeat/sensors/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sensors/g;->a()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v1}, Lbr/com/topaz/l/l;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HB_L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->w()Lbr/com/topaz/w/e;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/w/e;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->w()Lbr/com/topaz/w/e;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/w/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->w()Lbr/com/topaz/w/e;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/w/e;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Lbr/com/topaz/l/g;->X()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lbr/com/topaz/r/h;->a(Ljava/lang/String;Ljava/util/List;)Lbr/com/topaz/r/h;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/r/k;->n:Lbr/com/topaz/r/h;

    return-object p1
.end method

.method private a(Lbr/com/topaz/r/c$a;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lbr/com/topaz/r/c$a;->b()I

    move-result v0

    invoke-virtual {p1}, Lbr/com/topaz/r/c$a;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lbr/com/topaz/r/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v3, Lbr/com/topaz/r/e;

    invoke-direct {v3, v2, v0}, Lbr/com/topaz/r/e;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v3}, Lcom/google/gson/GsonBuilder;->addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    new-instance v0, Lbr/com/topaz/r/i;

    iget-object v2, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v0, v1, v2}, Lbr/com/topaz/r/i;-><init>(Ljava/lang/String;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-virtual {v0, p1}, Lbr/com/topaz/r/i;->a(Lbr/com/topaz/r/c$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance p4, Lbr/com/topaz/r/k$b;

    invoke-direct {p4, p0, p2, p3, v1}, Lbr/com/topaz/r/k$b;-><init>(Lbr/com/topaz/r/k;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v2, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-lez p5, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    :goto_2
    invoke-interface {v2, v3, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4, p3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    const-string p4, "53"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string p5, "082"

    invoke-virtual {p4, p3, p5}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3
    const-string p4, "55"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string p5, "081"

    invoke-virtual {p4, p3, p5}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_4
    const-string p4, "56"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string p4, "083"

    invoke-virtual {p2, p3, p4}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_5
    return-object p1
.end method

.method static synthetic a(Lbr/com/topaz/r/k;)V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/r/k;->d()V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/r/k;Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/topaz/r/k;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/r/k;->i:Lbr/com/topaz/u0/p;

    new-instance v1, Lbr/com/topaz/l/k;

    invoke-direct {v1, p1, p2, p3}, Lbr/com/topaz/l/k;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/u0/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    invoke-interface {p2, p1}, Lbr/com/topaz/l/f0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lbr/com/topaz/r/k;->b:Lbr/com/topaz/r/k$c;

    invoke-interface {p1}, Lbr/com/topaz/r/k$c;->e()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lbr/com/topaz/r/k;->m:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p2, p1, p3}, Lbr/com/topaz/r/k;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/r/k;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/r/k;->d:Lbr/com/topaz/f0/c;

    new-instance v8, Lbr/com/topaz/r/k$a;

    move-object v2, v8

    move-object v3, p0

    move v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lbr/com/topaz/r/k$a;-><init>(Lbr/com/topaz/r/k;ZLjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v1, v0, p3, p2, v8}, Lbr/com/topaz/f0/c;->b(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lbr/com/topaz/f0/c$a;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lbr/com/topaz/r/k;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string p3, "085"

    invoke-virtual {p2, p1, p3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lbr/com/topaz/r/k;)Lbr/com/topaz/r/k$c;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/r/k;->b:Lbr/com/topaz/r/k$c;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/r/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbr/com/topaz/r/k;->l:Lbr/com/topaz/r/g;

    const-string v0, "LG"

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/r/k;->l:Lbr/com/topaz/r/g;

    invoke-virtual {v0, p1}, Lbr/com/topaz/r/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lbr/com/topaz/r/k;)I
    .locals 2

    iget v0, p0, Lbr/com/topaz/r/k;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbr/com/topaz/r/k;->m:I

    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-class v0, Lbr/com/topaz/l/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    aget-object v6, v4, v2

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/google/gson/annotations/SerializedName;

    if-ne v7, v6, :cond_0

    aget-object v4, v4, v2

    check-cast v4, Lcom/google/gson/annotations/SerializedName;

    invoke-interface {v4}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->d()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 6

    const-string v0, "x-u-c"

    iget-object v1, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->e()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Lbr/com/topaz/l/f0;->a(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lbr/com/topaz/r/k;->a(Ljava/lang/String;)Lbr/com/topaz/l/k;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/k;->b()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/k;->a(Ljava/util/HashMap;)V

    const/4 v3, 0x0

    iput v3, p0, Lbr/com/topaz/r/k;->m:I

    invoke-virtual {v2}, Lbr/com/topaz/l/k;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lbr/com/topaz/l/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lbr/com/topaz/l/k;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v4, v5, v2, v3}, Lbr/com/topaz/r/k;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "009"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 1

    invoke-direct {p0}, Lbr/com/topaz/r/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->i0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/r/k;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/r/h;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/k;->n:Lbr/com/topaz/r/h;

    return-void
.end method

.method public a(Lbr/com/topaz/r/k$c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/k;->b:Lbr/com/topaz/r/k$c;

    return-void
.end method

.method public run()V
    .locals 8

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/r/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/r/k;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Lbr/com/topaz/l/g;->n()Lbr/com/topaz/r/c;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v3}, Lbr/com/topaz/l/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/r/c;->a(Ljava/lang/String;)Lbr/com/topaz/r/c$a;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    invoke-direct {p0, v1}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/c$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->I()Lbr/com/topaz/m0/c;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/m0/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v4, "53"

    invoke-virtual {v1}, Lbr/com/topaz/m0/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lbr/com/topaz/m0/c;->c()I

    move-result v6

    invoke-virtual {v1}, Lbr/com/topaz/m0/c;->b()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lbr/com/topaz/r/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v2, v3

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->e()Lbr/com/topaz/l/d;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/d;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "55"

    invoke-virtual {v1}, Lbr/com/topaz/l/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbr/com/topaz/l/d;->c()I

    move-result v5

    invoke-virtual {v1}, Lbr/com/topaz/l/d;->b()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/r/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0}, Lbr/com/topaz/l/g;->d()Lbr/com/topaz/l/a;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/a;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "56"

    invoke-virtual {v1}, Lbr/com/topaz/l/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbr/com/topaz/l/a;->c()I

    move-result v5

    invoke-virtual {v1}, Lbr/com/topaz/l/a;->b()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/r/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v1, p0, Lbr/com/topaz/r/k;->k:Lbr/com/topaz/k/c;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/com/topaz/k/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/k;->k:Lbr/com/topaz/k/c;

    invoke-virtual {v1, v2}, Lbr/com/topaz/k/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lbr/com/topaz/r/k;->j:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v3, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/r/k;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v3}, Lbr/com/topaz/l/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lbr/com/topaz/r/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbr/com/topaz/r/k;->h:Ljava/util/HashMap;

    const-string v5, "x-ct-id"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lbr/com/topaz/r/k;->h:Ljava/util/HashMap;

    const-string v4, "x-u-id"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lbr/com/topaz/r/k;->h:Ljava/util/HashMap;

    const-string v3, "x-u-c"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/l/g;)Lbr/com/topaz/r/h;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/r/h;->a()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lbr/com/topaz/r/k;->h:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lbr/com/topaz/r/k;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/k;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "008"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
