.class public final Lio/sentry/JsonObjectDeserializer;
.super Ljava/lang/Object;
.source "JsonObjectDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/JsonObjectDeserializer$c;,
        Lio/sentry/JsonObjectDeserializer$d;,
        Lio/sentry/JsonObjectDeserializer$e;,
        Lio/sentry/JsonObjectDeserializer$f;,
        Lio/sentry/JsonObjectDeserializer$b;,
        Lio/sentry/JsonObjectDeserializer$g;
    }
.end annotation

.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/sentry/JsonObjectDeserializer$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a()Lio/sentry/JsonObjectDeserializer$c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/JsonObjectDeserializer$c;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->j()V

    .line 4
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$f;

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$f;

    .line 6
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->j()V

    .line 7
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v2

    check-cast v2, Lio/sentry/JsonObjectDeserializer$e;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v2, Lio/sentry/JsonObjectDeserializer$e;->a:Ljava/util/HashMap;

    iget-object v1, v1, Lio/sentry/JsonObjectDeserializer$f;->a:Ljava/lang/String;

    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$d;

    if-eqz v1, :cond_2

    .line 10
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$d;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, v1, Lio/sentry/JsonObjectDeserializer$d;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private c(Lio/sentry/JsonObjectDeserializer$b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/sentry/JsonObjectDeserializer$b;->a()Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lio/sentry/JsonObjectDeserializer$g;

    invoke-direct {v0, p1}, Lio/sentry/JsonObjectDeserializer$g;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->k(Lio/sentry/JsonObjectDeserializer$c;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/JsonObjectDeserializer$f;

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v0

    check-cast v0, Lio/sentry/JsonObjectDeserializer$f;

    .line 6
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->j()V

    .line 7
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$e;

    .line 8
    iget-object v1, v1, Lio/sentry/JsonObjectDeserializer$e;->a:Ljava/util/HashMap;

    iget-object v0, v0, Lio/sentry/JsonObjectDeserializer$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/JsonObjectDeserializer$d;

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object v0

    check-cast v0, Lio/sentry/JsonObjectDeserializer$d;

    .line 11
    iget-object v0, v0, Lio/sentry/JsonObjectDeserializer$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic e(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->h(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private h(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 3
    :catch_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private i(Lio/sentry/JsonObjectReader;)V
    .locals 2
    .param p1    # Lio/sentry/JsonObjectReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/JsonObjectDeserializer$a;->a:[I

    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 2
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNull()V

    .line 3
    sget-object v0, Lio/sentry/i;->a:Lio/sentry/i;

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->c(Lio/sentry/JsonObjectDeserializer$b;)Z

    move-result v0

    goto :goto_1

    .line 4
    :pswitch_2
    new-instance v0, Lio/sentry/p;

    invoke-direct {v0, p1}, Lio/sentry/p;-><init>(Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->c(Lio/sentry/JsonObjectDeserializer$b;)Z

    move-result v0

    goto :goto_1

    .line 5
    :pswitch_3
    new-instance v0, Lio/sentry/h;

    invoke-direct {v0, p0, p1}, Lio/sentry/h;-><init>(Lio/sentry/JsonObjectDeserializer;Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->c(Lio/sentry/JsonObjectDeserializer$b;)Z

    move-result v0

    goto :goto_1

    .line 6
    :pswitch_4
    new-instance v0, Lio/sentry/j;

    invoke-direct {v0, p1}, Lio/sentry/j;-><init>(Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->c(Lio/sentry/JsonObjectDeserializer$b;)Z

    move-result v0

    goto :goto_1

    .line 7
    :pswitch_5
    new-instance v0, Lio/sentry/JsonObjectDeserializer$f;

    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/JsonObjectDeserializer$f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->k(Lio/sentry/JsonObjectDeserializer$c;)V

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->endObject()V

    .line 9
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->b()Z

    move-result v0

    goto :goto_1

    .line 10
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->beginObject()V

    .line 11
    new-instance v0, Lio/sentry/JsonObjectDeserializer$e;

    invoke-direct {v0, v1}, Lio/sentry/JsonObjectDeserializer$e;-><init>(Lio/sentry/JsonObjectDeserializer$a;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->k(Lio/sentry/JsonObjectDeserializer$c;)V

    goto :goto_0

    .line 12
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->endArray()V

    .line 13
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->b()Z

    move-result v0

    goto :goto_1

    .line 14
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->beginArray()V

    .line 15
    new-instance v0, Lio/sentry/JsonObjectDeserializer$d;

    invoke-direct {v0, v1}, Lio/sentry/JsonObjectDeserializer$d;-><init>(Lio/sentry/JsonObjectDeserializer$a;)V

    invoke-direct {p0, v0}, Lio/sentry/JsonObjectDeserializer;->k(Lio/sentry/JsonObjectDeserializer$c;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    .line 16
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->i(Lio/sentry/JsonObjectReader;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private k(Lio/sentry/JsonObjectDeserializer$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/sentry/JsonObjectReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->i(Lio/sentry/JsonObjectReader;)V

    .line 2
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->a()Lio/sentry/JsonObjectDeserializer$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lio/sentry/JsonObjectDeserializer$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic f(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->e(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
