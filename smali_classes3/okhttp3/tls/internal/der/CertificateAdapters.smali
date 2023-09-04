.class public final Lokhttp3/tls/internal/der/CertificateAdapters;
.super Ljava/lang/Object;
.source "CertificateAdapters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008F\u0010GR\"\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\"\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0005\u001a\u0004\u0008\u000f\u0010\u0007R4\u0010\u0015\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00110\t8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000b\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0005\u001a\u0004\u0008\u0018\u0010\u0007R.\u0010\u001e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u001a0\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0005\u001a\u0004\u0008\u001d\u0010\u0007R\"\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0005\u001a\u0004\u0008!\u0010\u0007R\"\u0010&\u001a\u0008\u0012\u0004\u0012\u00020#0\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0005\u001a\u0004\u0008%\u0010\u0007R\u001c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\'0\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u0005R\"\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*0\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u0005\u001a\u0004\u0008,\u0010\u0007R\"\u00101\u001a\u0008\u0012\u0004\u0012\u00020.0\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u0005\u001a\u0004\u00080\u0010\u0007R\"\u00105\u001a\u0008\u0012\u0004\u0012\u0002020\t8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00083\u0010\u000b\u001a\u0004\u00084\u0010\u0014R\u001e\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u0010\u0005R4\u0010:\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00110\t8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00088\u0010\u000b\u001a\u0004\u00089\u0010\u0014R\u001c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020;0\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010\u0005R4\u0010?\u001a \u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00110\u001a0\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010\u0005R\"\u0010C\u001a\u0008\u0012\u0004\u0012\u00020@0\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u0010\u0005\u001a\u0004\u0008B\u0010\u0007R\u001c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010\u0005\u00a8\u0006H"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/CertificateAdapters;",
        "",
        "Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "Lokhttp3/tls/internal/der/Certificate;",
        "q",
        "Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "getCertificate$okhttp_tls",
        "()Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "certificate",
        "Lokhttp3/tls/internal/der/DerAdapter;",
        "c",
        "Lokhttp3/tls/internal/der/DerAdapter;",
        "algorithmParameters",
        "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
        "d",
        "getAlgorithmIdentifier$okhttp_tls",
        "algorithmIdentifier",
        "Lkotlin/Pair;",
        "h",
        "getGeneralName$okhttp_tls",
        "()Lokhttp3/tls/internal/der/DerAdapter;",
        "generalName",
        "Lokhttp3/tls/internal/der/Extension;",
        "k",
        "getExtension$okhttp_tls",
        "extension",
        "",
        "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
        "m",
        "getRdnSequence$okhttp_tls",
        "rdnSequence",
        "Lokhttp3/tls/internal/der/TbsCertificate;",
        "p",
        "getTbsCertificate$okhttp_tls",
        "tbsCertificate",
        "Lokhttp3/tls/internal/der/PrivateKeyInfo;",
        "r",
        "getPrivateKeyInfo$okhttp_tls",
        "privateKeyInfo",
        "Lokhttp3/tls/internal/der/BasicConstraints;",
        "e",
        "basicConstraints",
        "Lokio/ByteString;",
        "g",
        "getGeneralNameIpAddress$okhttp_tls",
        "generalNameIpAddress",
        "",
        "f",
        "getGeneralNameDnsName$okhttp_tls",
        "generalNameDnsName",
        "",
        "a",
        "getTime$okhttp_tls",
        "time",
        "j",
        "extensionValue",
        "n",
        "getName$okhttp_tls",
        "name",
        "Lokhttp3/tls/internal/der/Validity;",
        "b",
        "validity",
        "i",
        "subjectAlternativeName",
        "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
        "o",
        "getSubjectPublicKeyInfo$okhttp_tls",
        "subjectPublicKeyInfo",
        "l",
        "attributeTypeAndValue",
        "<init>",
        "()V",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters;

.field private static final a:Lokhttp3/tls/internal/der/DerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/Validity;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lokhttp3/tls/internal/der/DerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/BasicConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Lokhttp3/tls/internal/der/DerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final j:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/Extension;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final l:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Lokhttp3/tls/internal/der/DerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final o:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final p:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/TbsCertificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/Certificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final r:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/PrivateKeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters;

    .line 2
    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$time$1;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$time$1;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->a:Lokhttp3/tls/internal/der/DerAdapter;

    .line 3
    sget-object v7, Lokhttp3/tls/internal/der/Adapters;->INSTANCE:Lokhttp3/tls/internal/der/Adapters;

    const/4 v8, 0x2

    new-array v1, v8, [Lokhttp3/tls/internal/der/DerAdapter;

    const/4 v9, 0x0

    aput-object v0, v1, v9

    const/4 v10, 0x1

    aput-object v0, v1, v10

    .line 4
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$s;->b:Lokhttp3/tls/internal/der/CertificateAdapters$s;

    .line 5
    sget-object v2, Lokhttp3/tls/internal/der/CertificateAdapters$t;->b:Lokhttp3/tls/internal/der/CertificateAdapters$t;

    const-string v3, "Validity"

    .line 6
    invoke-virtual {v7, v3, v1, v0, v2}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->b:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 7
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters$c;->b:Lokhttp3/tls/internal/der/CertificateAdapters$c;

    invoke-virtual {v7, v1}, Lokhttp3/tls/internal/der/Adapters;->usingTypeHint(Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->c:Lokhttp3/tls/internal/der/DerAdapter;

    new-array v2, v8, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 8
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getOBJECT_IDENTIFIER()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/tls/internal/der/BasicDerAdapter;->asTypeHint()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v1, v2, v10

    .line 9
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters$a;->b:Lokhttp3/tls/internal/der/CertificateAdapters$a;

    .line 10
    sget-object v3, Lokhttp3/tls/internal/der/CertificateAdapters$b;->b:Lokhttp3/tls/internal/der/CertificateAdapters$b;

    const-string v4, "AlgorithmIdentifier"

    .line 11
    invoke-virtual {v7, v4, v2, v1, v3}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v11

    sput-object v11, Lokhttp3/tls/internal/der/CertificateAdapters;->d:Lokhttp3/tls/internal/der/BasicDerAdapter;

    new-array v1, v8, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 12
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getBOOLEAN()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    aput-object v2, v1, v9

    .line 13
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getINTEGER_AS_LONG()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    const/4 v12, 0x0

    invoke-static {v2, v12, v10, v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/Object;ILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    aput-object v2, v1, v10

    .line 14
    sget-object v2, Lokhttp3/tls/internal/der/CertificateAdapters$f;->b:Lokhttp3/tls/internal/der/CertificateAdapters$f;

    .line 15
    sget-object v4, Lokhttp3/tls/internal/der/CertificateAdapters$g;->b:Lokhttp3/tls/internal/der/CertificateAdapters$g;

    const-string v5, "BasicConstraints"

    .line 16
    invoke-virtual {v7, v5, v1, v2, v4}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->e:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 17
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getIA5_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v13

    const/4 v14, 0x0

    const-wide/16 v15, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->f:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 18
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getOCTET_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v13

    const-wide/16 v15, 0x7

    invoke-static/range {v13 .. v18}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    sput-object v2, Lokhttp3/tls/internal/der/CertificateAdapters;->g:Lokhttp3/tls/internal/der/BasicDerAdapter;

    const/4 v13, 0x3

    new-array v4, v13, [Lokhttp3/tls/internal/der/DerAdapter;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    .line 19
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getANY_VALUE()Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object v1

    aput-object v1, v4, v8

    .line 20
    invoke-virtual {v7, v4}, Lokhttp3/tls/internal/der/Adapters;->choice([Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object v14

    sput-object v14, Lokhttp3/tls/internal/der/CertificateAdapters;->h:Lokhttp3/tls/internal/der/DerAdapter;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    .line 21
    invoke-static/range {v14 .. v20}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->i:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 22
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters$l;->b:Lokhttp3/tls/internal/der/CertificateAdapters$l;

    invoke-virtual {v7, v1}, Lokhttp3/tls/internal/der/Adapters;->usingTypeHint(Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object v1

    .line 23
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getOCTET_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/tls/internal/der/BasicDerAdapter;->getTagClass()I

    move-result v2

    .line 24
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getOCTET_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/tls/internal/der/BasicDerAdapter;->getTag()J

    move-result-wide v4

    .line 25
    invoke-interface {v1, v2, v4, v5, v3}, Lokhttp3/tls/internal/der/DerAdapter;->withExplicitBox(IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->j:Lokhttp3/tls/internal/der/BasicDerAdapter;

    new-array v2, v13, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 26
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getOBJECT_IDENTIFIER()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/tls/internal/der/BasicDerAdapter;->asTypeHint()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v4

    aput-object v4, v2, v9

    .line 27
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getBOOLEAN()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v1, v2, v8

    .line 28
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters$j;->b:Lokhttp3/tls/internal/der/CertificateAdapters$j;

    .line 29
    sget-object v3, Lokhttp3/tls/internal/der/CertificateAdapters$k;->b:Lokhttp3/tls/internal/der/CertificateAdapters$k;

    const-string v4, "Extension"

    .line 30
    invoke-virtual {v7, v4, v2, v1, v3}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v14

    sput-object v14, Lokhttp3/tls/internal/der/CertificateAdapters;->k:Lokhttp3/tls/internal/der/BasicDerAdapter;

    new-array v15, v8, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 31
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getOBJECT_IDENTIFIER()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    aput-object v1, v15, v9

    new-array v2, v13, [Lkotlin/Pair;

    .line 32
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getUTF8_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v9

    .line 33
    const-class v1, Ljava/lang/Void;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getPRINTABLE_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v10

    .line 34
    const-class v1, Lokhttp3/tls/internal/der/AnyValue;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getANY_VALUE()Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    .line 35
    invoke-static/range {v1 .. v6}, Lokhttp3/tls/internal/der/Adapters;->any$default(Lokhttp3/tls/internal/der/Adapters;[Lkotlin/Pair;ZLjava/lang/Object;ILjava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object v1

    aput-object v1, v15, v10

    .line 36
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters$d;->b:Lokhttp3/tls/internal/der/CertificateAdapters$d;

    .line 37
    sget-object v2, Lokhttp3/tls/internal/der/CertificateAdapters$e;->b:Lokhttp3/tls/internal/der/CertificateAdapters$e;

    const-string v3, "AttributeTypeAndValue"

    .line 38
    invoke-virtual {v7, v3, v15, v1, v2}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->l:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 39
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->asSetOf()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->m:Lokhttp3/tls/internal/der/BasicDerAdapter;

    new-array v2, v10, [Lokhttp3/tls/internal/der/DerAdapter;

    aput-object v1, v2, v9

    .line 40
    invoke-virtual {v7, v2}, Lokhttp3/tls/internal/der/Adapters;->choice([Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object v1

    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->n:Lokhttp3/tls/internal/der/DerAdapter;

    new-array v2, v8, [Lokhttp3/tls/internal/der/DerAdapter;

    aput-object v11, v2, v9

    .line 41
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getBIT_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v3

    aput-object v3, v2, v10

    .line 42
    sget-object v3, Lokhttp3/tls/internal/der/CertificateAdapters$o;->b:Lokhttp3/tls/internal/der/CertificateAdapters$o;

    .line 43
    sget-object v4, Lokhttp3/tls/internal/der/CertificateAdapters$p;->b:Lokhttp3/tls/internal/der/CertificateAdapters$p;

    const-string v5, "SubjectPublicKeyInfo"

    .line 44
    invoke-virtual {v7, v5, v2, v3, v4}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    sput-object v2, Lokhttp3/tls/internal/der/CertificateAdapters;->o:Lokhttp3/tls/internal/der/BasicDerAdapter;

    const/16 v3, 0xa

    new-array v3, v3, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 45
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getINTEGER_AS_LONG()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x5

    invoke-static/range {v15 .. v21}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->withExplicitBox$default(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;ILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v4

    aput-object v4, v3, v9

    .line 46
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getINTEGER_AS_BIG_INTEGER()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object v11, v3, v8

    aput-object v1, v3, v13

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/4 v0, 0x6

    aput-object v2, v3, v0

    .line 47
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getBIT_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v15

    const-wide/16 v17, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    invoke-static {v0, v12, v10, v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/Object;ILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v3, v1

    .line 48
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getBIT_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v15

    const-wide/16 v17, 0x2

    invoke-static/range {v15 .. v20}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    invoke-static {v0, v12, v10, v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/Object;ILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v3, v1

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x7

    .line 49
    invoke-static/range {v14 .. v20}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v21

    const/16 v22, 0x0

    const-wide/16 v23, 0x3

    const/16 v25, 0x0

    const/16 v26, 0x5

    const/16 v27, 0x0

    invoke-static/range {v21 .. v27}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->withExplicitBox$default(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;ILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v3, v1

    .line 50
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$q;->b:Lokhttp3/tls/internal/der/CertificateAdapters$q;

    .line 51
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters$r;->b:Lokhttp3/tls/internal/der/CertificateAdapters$r;

    const-string v2, "TBSCertificate"

    .line 52
    invoke-virtual {v7, v2, v3, v0, v1}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->p:Lokhttp3/tls/internal/der/BasicDerAdapter;

    new-array v1, v13, [Lokhttp3/tls/internal/der/DerAdapter;

    aput-object v0, v1, v9

    aput-object v11, v1, v10

    .line 53
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getBIT_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    aput-object v0, v1, v8

    .line 54
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$h;->b:Lokhttp3/tls/internal/der/CertificateAdapters$h;

    .line 55
    sget-object v2, Lokhttp3/tls/internal/der/CertificateAdapters$i;->b:Lokhttp3/tls/internal/der/CertificateAdapters$i;

    const-string v3, "Certificate"

    .line 56
    invoke-virtual {v7, v3, v1, v0, v2}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->q:Lokhttp3/tls/internal/der/BasicDerAdapter;

    new-array v0, v13, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 57
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getINTEGER_AS_LONG()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    aput-object v1, v0, v9

    aput-object v11, v0, v10

    .line 58
    invoke-virtual {v7}, Lokhttp3/tls/internal/der/Adapters;->getOCTET_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    aput-object v1, v0, v8

    .line 59
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters$m;->b:Lokhttp3/tls/internal/der/CertificateAdapters$m;

    .line 60
    sget-object v2, Lokhttp3/tls/internal/der/CertificateAdapters$n;->b:Lokhttp3/tls/internal/der/CertificateAdapters$n;

    const-string v3, "PrivateKeyInfo"

    .line 61
    invoke-virtual {v7, v3, v0, v1, v2}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->r:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBasicConstraints$p(Lokhttp3/tls/internal/der/CertificateAdapters;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0

    .line 1
    sget-object p0, Lokhttp3/tls/internal/der/CertificateAdapters;->e:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getSubjectAlternativeName$p(Lokhttp3/tls/internal/der/CertificateAdapters;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0

    .line 1
    sget-object p0, Lokhttp3/tls/internal/der/CertificateAdapters;->i:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object p0
.end method


# virtual methods
.method public final getAlgorithmIdentifier$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->d:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getCertificate$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/Certificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->q:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getExtension$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/Extension;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->k:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getGeneralName$okhttp_tls()Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->h:Lokhttp3/tls/internal/der/DerAdapter;

    return-object v0
.end method

.method public final getGeneralNameDnsName$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->f:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getGeneralNameIpAddress$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->g:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getName$okhttp_tls()Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->n:Lokhttp3/tls/internal/der/DerAdapter;

    return-object v0
.end method

.method public final getPrivateKeyInfo$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/PrivateKeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->r:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getRdnSequence$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lokhttp3/tls/internal/der/AttributeTypeAndValue;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->m:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getSubjectPublicKeyInfo$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->o:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getTbsCertificate$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/TbsCertificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->p:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getTime$okhttp_tls()Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->a:Lokhttp3/tls/internal/der/DerAdapter;

    return-object v0
.end method
