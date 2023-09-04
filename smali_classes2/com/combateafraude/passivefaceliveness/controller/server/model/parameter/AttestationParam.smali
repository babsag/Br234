.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;
.super Ljava/lang/Object;
.source "AttestationParam.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private fingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fingerprint"
    .end annotation
.end field

.field private information:Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "information"
    .end annotation
.end field

.field private platform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field private previousAttestation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previousAttestation"
    .end annotation
.end field

.field private settings:Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settings"
    .end annotation
.end field

.field private trackingId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingId"
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->version:I

    const-string v0, "android"

    .line 3
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->platform:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->fingerprint:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->trackingId:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->information:Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;

    .line 7
    iput-object p4, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->settings:Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;

    .line 8
    iput-object p5, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->previousAttestation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreviousAttestation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;->previousAttestation:Ljava/lang/String;

    return-object v0
.end method
