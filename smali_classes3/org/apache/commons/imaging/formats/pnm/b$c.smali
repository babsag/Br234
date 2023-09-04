.class Lorg/apache/commons/imaging/formats/pnm/b$c;
.super Lorg/apache/commons/imaging/formats/pnm/b$d;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final b:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field final synthetic c:Lorg/apache/commons/imaging/formats/pnm/b;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pnm/b$d;-><init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/formats/pnm/b$a;)V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->b:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->b:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/pnm/b;->n(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/a;->l(Ljava/io/InputStream;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/b;->o(Lorg/apache/commons/imaging/formats/pnm/b;)F

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/b;->p(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/b;->q(Lorg/apache/commons/imaging/formats/pnm/b;)Z

    move-result v1

    const/16 v2, 0xff

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/b;->n(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/formats/pnm/a;->l(Ljava/io/InputStream;I)I

    move-result p1

    .line 5
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/b;->o(Lorg/apache/commons/imaging/formats/pnm/b;)F

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/b$c;->c:Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/b;->p(Lorg/apache/commons/imaging/formats/pnm/b;)I

    move-result v3

    invoke-static {p1, v1, v3}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr v0, v2

    shl-int/lit8 v1, v0, 0x10

    or-int/2addr p1, v1

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    return p1
.end method
