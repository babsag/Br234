.class Lorg/apache/commons/imaging/formats/tiff/write/f;
.super Ljava/lang/Object;
.source "TiffOutputSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/write/f$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteOrder;

.field public final b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->e:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->a:Ljava/nio/ByteOrder;

    .line 5
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 6
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->d:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/f$a;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/f$a;-><init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lorg/apache/commons/imaging/formats/tiff/write/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/nio/ByteOrder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/f$a;

    .line 2
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v3, v1, Lorg/apache/commons/imaging/formats/tiff/write/f$a;->a:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 3
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v2

    .line 5
    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/write/f$a;->b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->setData([B)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/e;

    const/4 v2, 0x0

    .line 7
    :goto_2
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/tiff/write/e;->c:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 8
    aget-object v3, v3, v2

    .line 9
    iget-object v4, v1, Lorg/apache/commons/imaging/formats/tiff/write/e;->a:[I

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v5

    long-to-int v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 10
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/write/e;->b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/write/e;->a:[I

    .line 11
    invoke-virtual {v3, v1, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v1

    .line 12
    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->setData([B)V

    goto :goto_1

    :cond_2
    return-void
.end method
