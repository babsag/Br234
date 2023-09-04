.class public final synthetic Lio/sentry/c1;
.super Ljava/lang/Object;
.source "MeasurementUnit.java"


# direct methods
.method public static a(Lio/sentry/MeasurementUnit;)Ljava/lang/String;
    .locals 2
    .param p0, "_this"    # Lio/sentry/MeasurementUnit;
    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/sentry/MeasurementUnit;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
