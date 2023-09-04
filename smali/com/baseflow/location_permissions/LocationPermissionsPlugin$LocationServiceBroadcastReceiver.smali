.class Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationPermissionsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/location_permissions/LocationPermissionsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationServiceBroadcastReceiver"
.end annotation


# instance fields
.field private final locationPermissionsPlugin:Lcom/baseflow/location_permissions/LocationPermissionsPlugin;


# direct methods
.method private constructor <init>(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationPermissionsPlugin"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;->locationPermissionsPlugin:Lcom/baseflow/location_permissions/LocationPermissionsPlugin;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;Lcom/baseflow/location_permissions/LocationPermissionsPlugin$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;-><init>(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;->locationPermissionsPlugin:Lcom/baseflow/location_permissions/LocationPermissionsPlugin;

    invoke-static {p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->access$200(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->access$300(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;Z)V

    return-void
.end method
