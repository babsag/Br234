.class final Lokhttp3/tls/internal/der/CertificateAdapters$q;
.super Lkotlin/jvm/internal/Lambda;
.source "CertificateAdapters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/internal/der/CertificateAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokhttp3/tls/internal/der/TbsCertificate;",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lokhttp3/tls/internal/der/CertificateAdapters$q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$q;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$q;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$q;->b:Lokhttp3/tls/internal/der/CertificateAdapters$q;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/tls/internal/der/TbsCertificate;)Ljava/util/List;
    .locals 4
    .param p1    # Lokhttp3/tls/internal/der/TbsCertificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/TbsCertificate;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSignature()Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters;

    invoke-virtual {v1}, Lokhttp3/tls/internal/der/CertificateAdapters;->getRdnSequence$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getIssuer()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 5
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getValidity()Lokhttp3/tls/internal/der/Validity;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    .line 6
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/CertificateAdapters;->getRdnSequence$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSubject()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSubjectPublicKeyInfo()Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getIssuerUniqueID()Lokhttp3/tls/internal/der/BitString;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSubjectUniqueID()Lokhttp3/tls/internal/der/BitString;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 10
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getExtensions()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/tls/internal/der/TbsCertificate;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/CertificateAdapters$q;->a(Lokhttp3/tls/internal/der/TbsCertificate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
