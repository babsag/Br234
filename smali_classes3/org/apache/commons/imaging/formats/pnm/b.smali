.class Lorg/apache/commons/imaging/formats/pnm/b;
.super Lorg/apache/commons/imaging/formats/pnm/a;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/pnm/b$b;,
        Lorg/apache/commons/imaging/formats/pnm/b$c;,
        Lorg/apache/commons/imaging/formats/pnm/b$d;
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private final f:F

.field private final g:I

.field private final h:Z

.field private final i:Lorg/apache/commons/imaging/formats/pnm/b$d;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/pnm/a;-><init>(IIZ)V

    .line 2
    iput p3, p0, Lorg/apache/commons/imaging/formats/pnm/b;->d:I

    .line 3
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/b;->e:I

    const-string p1, " is out of range [1;65535]"

    const-string p2, "PAM maxVal "

    if-lez p4, :cond_8

    const/16 p3, 0xff

    const/4 v1, 0x2

    if-gt p4, p3, :cond_0

    const/high16 p1, 0x437f0000    # 255.0f

    .line 4
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/b;->f:F

    .line 5
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->g:I

    goto :goto_0

    :cond_0
    const p3, 0xffff

    if-gt p4, p3, :cond_7

    const p1, 0x477fff00    # 65535.0f

    .line 6
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/b;->f:F

    .line 7
    iput v1, p0, Lorg/apache/commons/imaging/formats/pnm/b;->g:I

    :goto_0
    const-string p1, "_ALPHA"

    .line 8
    invoke-virtual {p5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/b;->h:Z

    const/4 p1, -0x1

    .line 9
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    :goto_1
    const/4 v0, -0x1

    goto :goto_2

    :sswitch_0
    const-string p2, "GRAYSCALE"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_1
    const-string p2, "GRAYSCALE_ALPHA"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_2
    const-string p2, "RGB"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string p2, "BLACKANDWHITE"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_4
    const-string p2, "BLACKANDWHITE_ALPHA"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :sswitch_5
    const-string p2, "RGB_ALPHA"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 10
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown PAM tupletype \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :pswitch_0
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/b$c;

    sget-object p2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/b$c;-><init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/b;->i:Lorg/apache/commons/imaging/formats/pnm/b$d;

    goto :goto_3

    .line 12
    :pswitch_1
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/b$c;

    sget-object p2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/b$c;-><init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/b;->i:Lorg/apache/commons/imaging/formats/pnm/b$d;

    goto :goto_3

    .line 13
    :pswitch_2
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/b$b;-><init>(Lorg/apache/commons/imaging/formats/pnm/b;Lorg/apache/commons/imaging/formats/pnm/b$a;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/b;->i:Lorg/apache/commons/imaging/formats/pnm/b$d;

    :goto_3
    return-void

    .line 14
    :cond_7
    new-instance p3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 15
    :cond_8
    new-instance p3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69719cd4 -> :sswitch_5
        -0x2317faf0 -> :sswitch_4
        -0x14dce66f -> :sswitch_3
        0x13cad -> :sswitch_2
        0x1a6657a6 -> :sswitch_1
        0x702094a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic n(Lorg/apache/commons/imaging/formats/pnm/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->g:I

    return p0
.end method

.method static synthetic o(Lorg/apache/commons/imaging/formats/pnm/b;)F
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->f:F

    return p0
.end method

.method static synthetic p(Lorg/apache/commons/imaging/formats/pnm/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->e:I

    return p0
.end method

.method static synthetic q(Lorg/apache/commons/imaging/formats/pnm/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->h:Z

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->e:I

    return v0
.end method

.method public b()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->i:Lorg/apache/commons/imaging/formats/pnm/b$d;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/b$d;->a()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/apache/commons/imaging/ImageFormat;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "PAM: portable arbitrary map file format"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "image/x-portable-arbitrary-map"

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->d:I

    return v0
.end method

.method public g(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->i:Lorg/apache/commons/imaging/formats/pnm/b$d;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/pnm/b$d;->b(Ljava/io/InputStream;)I

    move-result p1

    return p1
.end method

.method public h(Lorg/apache/commons/imaging/formats/pnm/k;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PAM files are only ever binary"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/b;->h:Z

    return v0
.end method
