.class Lcom/baseflow/location_permissions/LocationPermissionsPlugin$1;
.super Ljava/lang/Object;
.source "LocationPermissionsPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$locationPermissionsPlugin:Lcom/baseflow/location_permissions/LocationPermissionsPlugin;


# direct methods
.method constructor <init>(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$locationPermissionsPlugin"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$1;->val$locationPermissionsPlugin:Lcom/baseflow/location_permissions/LocationPermissionsPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "permissions",
            "grantResults"
        }
    .end annotation

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$1;->val$locationPermissionsPlugin:Lcom/baseflow/location_permissions/LocationPermissionsPlugin;

    invoke-static {p1, p2, p3}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->access$100(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;[Ljava/lang/String;[I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
