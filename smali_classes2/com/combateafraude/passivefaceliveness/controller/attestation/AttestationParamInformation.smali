.class public Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;
.super Ljava/lang/Object;
.source "AttestationParamInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private board:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "board"
    .end annotation
.end field

.field private brand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private device:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device"
    .end annotation
.end field

.field private hardware:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardware"
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "host"
    .end annotation
.end field

.field private manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manufacturer"
    .end annotation
.end field

.field private final model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private product:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcaf/io/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcaf/io/p;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->model:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcaf/io/p;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->brand:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcaf/io/p;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->manufacturer:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcaf/io/p;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->device:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcaf/io/p;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->board:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcaf/io/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->hardware:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcaf/io/p;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->product:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcaf/io/p;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;->host:Ljava/lang/String;

    return-void
.end method
