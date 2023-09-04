.class public Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;
.super Ljava/lang/Object;
.source "PermissionInfo.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field hasCameraPermission:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasCameraPermission"
    .end annotation
.end field

.field hasLocationPermission:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasLocationPermission"
    .end annotation
.end field

.field hasMicrophonePermission:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasMicrophonePermission"
    .end annotation
.end field

.field hasReadContactsPermission:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasReadContactsPermission"
    .end annotation
.end field

.field hasReadExternalStoragePermission:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasReadExternalStoragePermission"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasCameraPermission:Z

    .line 3
    iput-boolean p2, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasReadExternalStoragePermission:Z

    .line 4
    iput-boolean p3, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasLocationPermission:Z

    .line 5
    iput-boolean p4, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasReadContactsPermission:Z

    .line 6
    iput-boolean p5, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasMicrophonePermission:Z

    return-void
.end method


# virtual methods
.method public hasCameraPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasCameraPermission:Z

    return v0
.end method

.method public hasLocationPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasLocationPermission:Z

    return v0
.end method

.method public hasReadContactsPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasReadContactsPermission:Z

    return v0
.end method

.method public hasReadExternalStoragePermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;->hasReadExternalStoragePermission:Z

    return v0
.end method
