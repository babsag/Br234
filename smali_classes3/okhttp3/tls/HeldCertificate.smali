.class public final Lokhttp3/tls/HeldCertificate;
.super Ljava/lang/Object;
.source "HeldCertificate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/tls/HeldCertificate$Builder;,
        Lokhttp3/tls/HeldCertificate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u0000 \u00182\u00020\u0001:\u0002\u0019\u0018B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u000c\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\r\u0010\u0011\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u000fR\u0019\u0010\u0008\u001a\u00020\u00058\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0008\u0010\u0007R\u0019\u0010\u000c\u001a\u00020\t8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokhttp3/tls/HeldCertificate;",
        "",
        "Lokio/ByteString;",
        "a",
        "()Lokio/ByteString;",
        "Ljava/security/cert/X509Certificate;",
        "-deprecated_certificate",
        "()Ljava/security/cert/X509Certificate;",
        "certificate",
        "Ljava/security/KeyPair;",
        "-deprecated_keyPair",
        "()Ljava/security/KeyPair;",
        "keyPair",
        "",
        "certificatePem",
        "()Ljava/lang/String;",
        "privateKeyPkcs8Pem",
        "privateKeyPkcs1Pem",
        "c",
        "Ljava/security/cert/X509Certificate;",
        "b",
        "Ljava/security/KeyPair;",
        "<init>",
        "(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;)V",
        "Companion",
        "Builder",
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
.field public static final Companion:Lokhttp3/tls/HeldCertificate$Companion;

.field private static final a:Lkotlin/text/Regex;


# instance fields
.field private final b:Ljava/security/KeyPair;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/security/cert/X509Certificate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/tls/HeldCertificate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/tls/HeldCertificate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/tls/HeldCertificate;->Companion:Lokhttp3/tls/HeldCertificate$Companion;

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "-----BEGIN ([!-,.-~ ]*)-----([^-]*)-----END \\1-----"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/tls/HeldCertificate;->a:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1    # Ljava/security/KeyPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyPair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/tls/HeldCertificate;->b:Ljava/security/KeyPair;

    iput-object p2, p0, Lokhttp3/tls/HeldCertificate;->c:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method private final a()Lokio/ByteString;
    .locals 7

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters;

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/CertificateAdapters;->getPrivateKeyInfo$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    iget-object v2, p0, Lokhttp3/tls/HeldCertificate;->b:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    const-string v3, "keyPair.private"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    const-string v3, "keyPair.private.encoded"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->fromDer(Lokio/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/tls/internal/der/PrivateKeyInfo;

    .line 2
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/PrivateKeyInfo;->getPrivateKey()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getPEM_REGEX$cp()Lkotlin/text/Regex;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/tls/HeldCertificate;->a:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final decode(Ljava/lang/String;)Lokhttp3/tls/HeldCertificate;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokhttp3/tls/HeldCertificate;->Companion:Lokhttp3/tls/HeldCertificate$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/tls/HeldCertificate$Companion;->decode(Ljava/lang/String;)Lokhttp3/tls/HeldCertificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_certificate()Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "certificate"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_certificate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HeldCertificate;->c:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final -deprecated_keyPair()Ljava/security/KeyPair;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "keyPair"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_keyPair"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HeldCertificate;->b:Ljava/security/KeyPair;

    return-object v0
.end method

.method public final certificate()Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "certificate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HeldCertificate;->c:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final certificatePem()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HeldCertificate;->c:Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lokhttp3/tls/Certificates;->certificatePem(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final keyPair()Ljava/security/KeyPair;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "keyPair"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HeldCertificate;->b:Ljava/security/KeyPair;

    return-object v0
.end method

.method public final privateKeyPkcs1Pem()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HeldCertificate;->b:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    instance-of v0, v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN RSA PRIVATE KEY-----\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lokhttp3/tls/HeldCertificate;->a()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/tls/Certificates;->encodeBase64Lines(Ljava/lang/StringBuilder;Lokio/ByteString;)V

    const-string v1, "-----END RSA PRIVATE KEY-----\n"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS1 only supports RSA keys"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final privateKeyPkcs8Pem()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN PRIVATE KEY-----\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    iget-object v1, p0, Lokhttp3/tls/HeldCertificate;->b:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const-string v3, "keyPair.private"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    const-string v1, "keyPair.private.encoded"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/tls/Certificates;->encodeBase64Lines(Ljava/lang/StringBuilder;Lokio/ByteString;)V

    const-string v1, "-----END PRIVATE KEY-----\n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
