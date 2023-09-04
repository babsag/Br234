.class Lcom/ca/mas/core/registration/RegistrationClient$a;
.super Ljava/lang/Object;
.source "RegistrationClient.java"

# interfaces
.implements Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/registration/RegistrationClient;->registerDevice([BLcom/ca/mas/foundation/MASRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ca/mas/core/token/IdToken;

.field final synthetic d:[Ljava/security/cert/X509Certificate;

.field final synthetic e:Lcom/ca/mas/core/registration/RegistrationClient;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/registration/RegistrationClient;Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;Ljava/lang/String;Lcom/ca/mas/core/token/IdToken;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->e:Lcom/ca/mas/core/registration/RegistrationClient;

    iput-object p2, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->a:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    iput-object p3, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->c:Lcom/ca/mas/core/token/IdToken;

    iput-object p5, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->d:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->d:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->a:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    return-object v0
.end method

.method public getIdToken()Lcom/ca/mas/core/token/IdToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->c:Lcom/ca/mas/core/token/IdToken;

    return-object v0
.end method

.method public getMagIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/registration/RegistrationClient$a;->b:Ljava/lang/String;

    return-object v0
.end method
