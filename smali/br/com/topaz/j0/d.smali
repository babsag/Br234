.class public Lbr/com/topaz/j0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:Lbr/com/topaz/j0/e;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/g;Lbr/com/topaz/j0/c;Lbr/com/topaz/k0/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbr/com/topaz/j0/e;

    new-instance v1, Lbr/com/topaz/j0/b;

    invoke-direct {v1}, Lbr/com/topaz/j0/b;-><init>()V

    invoke-direct {v0, p1, p2, v1, p3}, Lbr/com/topaz/j0/e;-><init>(Lbr/com/topaz/l/g;Lbr/com/topaz/j0/c;Lbr/com/topaz/j0/b;Lbr/com/topaz/k0/a;)V

    sput-object v0, Lbr/com/topaz/j0/d;->a:Lbr/com/topaz/j0/e;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    sget-object v0, Lbr/com/topaz/j0/d;->a:Lbr/com/topaz/j0/e;

    invoke-virtual {v0, p1}, Lbr/com/topaz/j0/e;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method
