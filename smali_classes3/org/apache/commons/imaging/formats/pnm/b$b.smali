.class Lorg/apache/commons/imaging/formats/pnm/b$b;
.super Lorg/apache/commons/imaging/formats/pnm/b$d;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lorg/apache/commons/imaging/formats/pnm/b;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/formats/pnm/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pnm/b$d;-><init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/formats/pnm/b$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/formats/pnm/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/b$b;-><init>(Lorg/apache/commons/imaging/formats/pnm/b;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/pnm/b;->n(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/a;->l(Ljava/io/InputStream;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/b;->n(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/formats/pnm/a;->l(Ljava/io/InputStream;I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/b;->n(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/commons/imaging/formats/pnm/a;->l(Ljava/io/InputStream;I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/b;->o(Lorg/apache/commons/imaging/formats/pnm/b;)F

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/b;->p(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result v0

    .line 5
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/b;->o(Lorg/apache/commons/imaging/formats/pnm/b;)F

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/b;->p(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result v1

    .line 6
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/b;->o(Lorg/apache/commons/imaging/formats/pnm/b;)F

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/b;->p(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result v2

    .line 7
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/b;->q(Lorg/apache/commons/imaging/formats/pnm/b;)Z

    move-result v3

    const/16 v4, 0xff

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/b;->n(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v3

    invoke-static {p1, v3}, Lorg/apache/commons/imaging/formats/pnm/a;->l(Ljava/io/InputStream;I)I

    move-result p1

    .line 9
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/b;->o(Lorg/apache/commons/imaging/formats/pnm/b;)F

    move-result v3

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/pnm/b$b;->b:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v5}, Lorg/apache/commons/imaging/formats/pnm/b;->p(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v5

    invoke-static {p1, v3, v5}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    and-int/2addr p1, v4

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit16 v0, v2, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    return p1
.end method
