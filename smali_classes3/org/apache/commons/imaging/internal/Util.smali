.class public Lorg/apache/commons/imaging/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/function/Predicate;Ljava/util/function/Supplier;)Lorg/apache/commons/imaging/ImageParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lorg/apache/commons/imaging/ImageParser<",
            "*>;>;",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageParser<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/ImageParser;

    return-object p0
.end method

.method static synthetic b(Lorg/apache/commons/imaging/ImageFormat;Lorg/apache/commons/imaging/ImageParser;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/ImageParser;->canAcceptType(Lorg/apache/commons/imaging/ImageFormat;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lorg/apache/commons/imaging/ImageFormat;)Ljava/lang/RuntimeException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;Lorg/apache/commons/imaging/ImageParser;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getImageParser(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/imaging/ImageParser<",
            "*>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/internal/c;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/internal/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/commons/imaging/internal/b;

    invoke-direct {v1, p0}, Lorg/apache/commons/imaging/internal/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/internal/Util;->a(Ljava/util/function/Predicate;Ljava/util/function/Supplier;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object p0

    return-object p0
.end method

.method public static getImageParser(Lorg/apache/commons/imaging/ImageFormat;)Lorg/apache/commons/imaging/ImageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/ImageFormat;",
            ")",
            "Lorg/apache/commons/imaging/ImageParser<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/internal/a;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/internal/a;-><init>(Lorg/apache/commons/imaging/ImageFormat;)V

    new-instance v1, Lorg/apache/commons/imaging/internal/d;

    invoke-direct {v1, p0}, Lorg/apache/commons/imaging/internal/d;-><init>(Lorg/apache/commons/imaging/ImageFormat;)V

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/internal/Util;->a(Ljava/util/function/Predicate;Ljava/util/function/Supplier;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object p0

    return-object p0
.end method

.method public static getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Lorg/apache/commons/imaging/ImageParser<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/imaging/internal/Util;->getImageParser(Lorg/apache/commons/imaging/ImageFormat;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getFileName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-static {p0}, Lorg/apache/commons/imaging/internal/Util;->getImageParser(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t parse this format."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
