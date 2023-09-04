.class public Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;
.super Ljava/lang/Object;
.source "AttestationParamSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appId"
    .end annotation
.end field

.field private batteryInfo:Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "batteryInfo"
    .end annotation
.end field

.field private contactsInfo:Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contactsInfo"
    .end annotation
.end field

.field private emails:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emails"
    .end annotation
.end field

.field private installedApps:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "installedApps"
    .end annotation
.end field

.field private memoryUsage:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "memoryUsage"
    .end annotation
.end field

.field private networkInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "networkInfo"
    .end annotation
.end field

.field private osVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osVersion"
    .end annotation
.end field

.field private permissionInfo:Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permissionInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcaf/io/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcaf/io/p;->b()Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->batteryInfo:Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;

    .line 3
    invoke-virtual {p1}, Lcaf/io/p;->e()Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->contactsInfo:Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;

    .line 4
    invoke-virtual {p1}, Lcaf/io/p;->q()Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->permissionInfo:Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;

    .line 5
    invoke-virtual {p1}, Lcaf/io/p;->o()Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->networkInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    .line 6
    invoke-virtual {p1}, Lcaf/io/p;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->osVersion:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcaf/io/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->appId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcaf/io/p;->g()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->emails:[Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcaf/io/p;->k()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->installedApps:[Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcaf/io/p;->m()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;->memoryUsage:Ljava/lang/Long;

    return-void
.end method
