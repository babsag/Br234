.class public Lbr/com/topaz/heartbeat/sensors/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/sensors/g$a;
    }
.end annotation


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/sensors/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->a:Ljava/util/List;

    const/16 v0, 0x34

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/g;->f:Ljava/lang/String;

    const/16 v0, 0x35

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/g;->g:Ljava/lang/String;

    const/16 v0, 0x36

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/g;->h:Ljava/lang/String;

    const/16 v0, 0x37

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/g;->i:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lbr/com/topaz/heartbeat/sensors/g;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/heartbeat/sensors/g;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lbr/com/topaz/heartbeat/sensors/g;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lbr/com/topaz/heartbeat/sensors/g;->c:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->c:Z

    :goto_0
    :try_start_1
    sget-object v1, Lbr/com/topaz/heartbeat/sensors/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lbr/com/topaz/heartbeat/sensors/g;->b:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbr/com/topaz/heartbeat/sensors/g;->b:Z

    :goto_1
    :try_start_2
    sget-object v1, Lbr/com/topaz/heartbeat/sensors/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/heartbeat/sensors/g;->d:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, ""

    iput-object v1, p0, Lbr/com/topaz/heartbeat/sensors/g;->d:Ljava/lang/String;

    :goto_2
    :try_start_3
    sget-object v1, Lbr/com/topaz/heartbeat/sensors/g;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbr/com/topaz/heartbeat/sensors/g;->e:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->e:I

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->c:Z

    :goto_3
    :try_start_4
    sget-object v1, Lbr/com/topaz/heartbeat/sensors/g;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    if-ge v0, v1, :cond_0

    :try_start_5
    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/g;->a:Ljava/util/List;

    new-instance v2, Lbr/com/topaz/heartbeat/sensors/g$a;

    invoke-direct {v2, p0}, Lbr/com/topaz/heartbeat/sensors/g$a;-><init>(Lbr/com/topaz/heartbeat/sensors/g;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/sensors/g$a;->a(Lorg/json/JSONObject;)Lbr/com/topaz/heartbeat/sensors/g$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/g;->a:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/sensors/g$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->e:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/sensors/g;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lbr/com/topaz/heartbeat/sensors/g;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KEY_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    return v0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
