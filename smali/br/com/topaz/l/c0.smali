.class public Lbr/com/topaz/l/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbr/com/topaz/l/c0;->a:I

    iput v0, p0, Lbr/com/topaz/l/c0;->b:I

    const/16 v0, 0x3b

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/l/c0;->c:Ljava/lang/String;

    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/l/c0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/l/c0;->b:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/l/c0;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/l/c0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/l/c0;->a:I

    iget-object v0, p0, Lbr/com/topaz/l/c0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lbr/com/topaz/l/c0;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput p1, p0, Lbr/com/topaz/l/c0;->a:I

    iput p1, p0, Lbr/com/topaz/l/c0;->b:I

    :goto_0
    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/l/c0;->a:I

    return v0
.end method
