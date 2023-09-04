.class public Lbr/com/topaz/k0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:Lbr/com/topaz/r/h;

.field private c:J

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/k0/f;->c:J

    return-wide v0
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Lbr/com/topaz/k0/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lbr/com/topaz/k0/f;"
        }
    .end annotation

    const-string v0, "u"

    :try_start_0
    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lbr/com/topaz/k0/f;->a(Z)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lbr/com/topaz/r/h;->a(Ljava/lang/Object;)Lbr/com/topaz/r/h;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lbr/com/topaz/r/h;->a(Ljava/lang/String;Ljava/util/List;)Lbr/com/topaz/r/h;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lbr/com/topaz/k0/f;->a(Lbr/com/topaz/r/h;)V

    const-string p2, "p"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lbr/com/topaz/k0/f;->a(J)V

    const-string p2, "ec"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lbr/com/topaz/k0/f;->b(I)V

    const-string p2, "ep"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lbr/com/topaz/k0/f;->c(I)V

    const-string p2, "b"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lbr/com/topaz/k0/f;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lbr/com/topaz/k0/f;->a(Z)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lbr/com/topaz/k0/f;->a(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lbr/com/topaz/k0/f;->b(I)V

    const p1, 0xea60

    invoke-virtual {p0, p1}, Lbr/com/topaz/k0/f;->c(I)V

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lbr/com/topaz/k0/f;->a(I)V

    :goto_1
    return-object p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/k0/f;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/k0/f;->c:J

    return-void
.end method

.method public a(Lbr/com/topaz/r/h;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/k0/f;->b:Lbr/com/topaz/r/h;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/k0/f;->a:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/k0/f;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/k0/f;->d:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/k0/f;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/k0/f;->e:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/k0/f;->e:I

    return v0
.end method

.method public e()Lbr/com/topaz/r/h;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/k0/f;->b:Lbr/com/topaz/r/h;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/k0/f;->a:Z

    return v0
.end method
