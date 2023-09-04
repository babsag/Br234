.class public Lbr/com/topaz/q0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lbr/com/topaz/r/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/q0/e;->a:Z

    return-void
.end method

.method private a(Lbr/com/topaz/r/h;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/q0/e;->b:Lbr/com/topaz/r/h;

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/q0/e;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/q0/e;
    .locals 1

    :try_start_0
    const-string v0, "e"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lbr/com/topaz/q0/e;->a(Z)V

    const-string v0, "u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lbr/com/topaz/r/h;->a(Ljava/lang/Object;)Lbr/com/topaz/r/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/q0/e;->a(Lbr/com/topaz/r/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbr/com/topaz/q0/e;->a(Z)V

    :goto_0
    return-object p0
.end method

.method public a()Lbr/com/topaz/r/h;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/q0/e;->b:Lbr/com/topaz/r/h;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/q0/e;->a:Z

    return v0
.end method
