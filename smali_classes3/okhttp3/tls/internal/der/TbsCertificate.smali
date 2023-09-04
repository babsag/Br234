.class public final Lokhttp3/tls/internal/der/TbsCertificate;
.super Ljava/lang/Object;
.source "certificates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\"\u0008\u0080\u0008\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u001f\u001a\u00020\u0005\u0012\u0006\u0010 \u001a\u00020\u0008\u0012\u0006\u0010!\u001a\u00020\u000b\u0012\u0012\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e\u0012\u0006\u0010#\u001a\u00020\u0012\u0012\u0012\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e\u0012\u0006\u0010%\u001a\u00020\u0016\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0019\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0019\u0012\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000e\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u0010\u0010\u0017\u001a\u00020\u0016H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0011J\u0096\u0001\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00052\u0008\u0008\u0002\u0010 \u001a\u00020\u00082\u0008\u0008\u0002\u0010!\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e2\u0008\u0008\u0002\u0010#\u001a\u00020\u00122\u0014\u0008\u0002\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e2\u0008\u0008\u0002\u0010%\u001a\u00020\u00162\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00192\u000e\u0008\u0002\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000eH\u00c6\u0001\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010,\u001a\u00020+H\u00d6\u0001\u00a2\u0006\u0004\u0008,\u0010-J\u001a\u00100\u001a\u00020/2\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u00080\u00101R\u0019\u0010#\u001a\u00020\u00128\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u0010\u0014R%\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u0010\u0011R\u0019\u0010 \u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010\nR%\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u00106\u001a\u0004\u0008<\u0010\u0011R\u001f\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u00106\u001a\u0004\u0008>\u0010\u0011R\u0019\u0010!\u001a\u00020\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010\rR\u0019\u0010%\u001a\u00020\u00168\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010\u0018R\u001b\u0010\'\u001a\u0004\u0018\u00010\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010\u001bR\u0019\u0010\u001f\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010\u0007R\u001b\u0010&\u001a\u0004\u0018\u00010\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008K\u0010F\u001a\u0004\u0008L\u0010\u001bR\u0013\u0010N\u001a\u00020+8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010-\u00a8\u0006Q"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/TbsCertificate;",
        "",
        "",
        "hashCode",
        "()I",
        "",
        "component1",
        "()J",
        "Ljava/math/BigInteger;",
        "component2",
        "()Ljava/math/BigInteger;",
        "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
        "component3",
        "()Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
        "",
        "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
        "component4",
        "()Ljava/util/List;",
        "Lokhttp3/tls/internal/der/Validity;",
        "component5",
        "()Lokhttp3/tls/internal/der/Validity;",
        "component6",
        "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
        "component7",
        "()Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
        "Lokhttp3/tls/internal/der/BitString;",
        "component8",
        "()Lokhttp3/tls/internal/der/BitString;",
        "component9",
        "Lokhttp3/tls/internal/der/Extension;",
        "component10",
        "version",
        "serialNumber",
        "signature",
        "issuer",
        "validity",
        "subject",
        "subjectPublicKeyInfo",
        "issuerUniqueID",
        "subjectUniqueID",
        "extensions",
        "copy",
        "(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)Lokhttp3/tls/internal/der/TbsCertificate;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "e",
        "Lokhttp3/tls/internal/der/Validity;",
        "getValidity",
        "d",
        "Ljava/util/List;",
        "getIssuer",
        "b",
        "Ljava/math/BigInteger;",
        "getSerialNumber",
        "f",
        "getSubject",
        "j",
        "getExtensions",
        "c",
        "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
        "getSignature",
        "g",
        "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
        "getSubjectPublicKeyInfo",
        "i",
        "Lokhttp3/tls/internal/der/BitString;",
        "getSubjectUniqueID",
        "a",
        "J",
        "getVersion",
        "h",
        "getIssuerUniqueID",
        "getSignatureAlgorithmName",
        "signatureAlgorithmName",
        "<init>",
        "(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)V",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/math/BigInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lokhttp3/tls/internal/der/Validity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lokhttp3/tls/internal/der/BitString;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Lokhttp3/tls/internal/der/BitString;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/Extension;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)V
    .locals 1
    .param p3    # Ljava/math/BigInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/tls/internal/der/AlgorithmIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lokhttp3/tls/internal/der/Validity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lokhttp3/tls/internal/der/BitString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lokhttp3/tls/internal/der/BitString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigInteger;",
            "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;",
            "Lokhttp3/tls/internal/der/Validity;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;",
            "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
            "Lokhttp3/tls/internal/der/BitString;",
            "Lokhttp3/tls/internal/der/BitString;",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/Extension;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serialNumber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "issuer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validity"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subject"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectPublicKeyInfo"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    iput-object p3, p0, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    iput-object p4, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    iput-object p5, p0, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    iput-object p6, p0, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    iput-object p7, p0, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    iput-object p8, p0, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    iput-object p9, p0, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    iput-object p10, p0, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    iput-object p11, p0, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lokhttp3/tls/internal/der/TbsCertificate;JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/tls/internal/der/TbsCertificate;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move-wide p1, v2

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lokhttp3/tls/internal/der/TbsCertificate;->copy(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)Lokhttp3/tls/internal/der/TbsCertificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    return-wide v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/Extension;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/math/BigInteger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component3()Lokhttp3/tls/internal/der/AlgorithmIdentifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Lokhttp3/tls/internal/der/Validity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public final component8()Lokhttp3/tls/internal/der/BitString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    return-object v0
.end method

.method public final component9()Lokhttp3/tls/internal/der/BitString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    return-object v0
.end method

.method public final copy(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)Lokhttp3/tls/internal/der/TbsCertificate;
    .locals 13
    .param p3    # Ljava/math/BigInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/tls/internal/der/AlgorithmIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lokhttp3/tls/internal/der/Validity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lokhttp3/tls/internal/der/BitString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lokhttp3/tls/internal/der/BitString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigInteger;",
            "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;",
            "Lokhttp3/tls/internal/der/Validity;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;",
            "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
            "Lokhttp3/tls/internal/der/BitString;",
            "Lokhttp3/tls/internal/der/BitString;",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/Extension;",
            ">;)",
            "Lokhttp3/tls/internal/der/TbsCertificate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "serialNumber"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "issuer"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validity"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subject"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectPublicKeyInfo"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/tls/internal/der/TbsCertificate;

    move-object v1, v0

    move-wide v2, p1

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lokhttp3/tls/internal/der/TbsCertificate;-><init>(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lokhttp3/tls/internal/der/TbsCertificate;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/tls/internal/der/TbsCertificate;

    iget-wide v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    iget-wide v2, p1, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    iget-object p1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/Extension;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    return-object v0
.end method

.method public final getIssuer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getIssuerUniqueID()Lokhttp3/tls/internal/der/BitString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/math/BigInteger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getSignature()Lokhttp3/tls/internal/der/AlgorithmIdentifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    return-object v0
.end method

.method public final getSignatureAlgorithmName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x20e135d2

    if-eq v1, v2, :cond_0

    const v2, 0x15f8b34e

    if-ne v1, v2, :cond_1

    const-string v1, "1.2.840.10045.4.3.2"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHA256withECDSA"

    goto :goto_0

    :cond_0
    const-string v1, "1.2.840.113549.1.1.11"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHA256WithRSA"

    :goto_0
    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected signature algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    invoke-virtual {v1}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getSubject()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    return-object v0
.end method

.method public final getSubjectPublicKeyInfo()Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public final getSubjectUniqueID()Lokhttp3/tls/internal/der/BitString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    return-object v0
.end method

.method public final getValidity()Lokhttp3/tls/internal/der/Validity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    return-object v0
.end method

.method public final getVersion()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    long-to-int v1, v0

    const/4 v0, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    invoke-virtual {v2}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    invoke-virtual {v2}, Lokhttp3/tls/internal/der/Validity;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    invoke-virtual {v2}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lokhttp3/tls/internal/der/BitString;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lokhttp3/tls/internal/der/BitString;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TbsCertificate(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->c:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", issuer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->e:Lokhttp3/tls/internal/der/Validity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectPublicKeyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->g:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", issuerUniqueID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->h:Lokhttp3/tls/internal/der/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectUniqueID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->i:Lokhttp3/tls/internal/der/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
