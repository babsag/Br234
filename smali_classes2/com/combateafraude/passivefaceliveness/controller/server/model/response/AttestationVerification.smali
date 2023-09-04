.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;
.super Ljava/lang/Object;
.source "AttestationVerification.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private attestation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attestation"
    .end annotation
.end field

.field private customerHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customerHash"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttestation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;->attestation:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;->customerHash:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;->requestId:Ljava/lang/String;

    return-object v0
.end method
