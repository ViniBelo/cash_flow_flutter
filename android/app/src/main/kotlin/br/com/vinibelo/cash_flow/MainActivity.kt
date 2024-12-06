package br.com.vinibelo.cash_flow

import android.content.ActivityNotFoundException
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {
    private val CHANNEL = "br.com.vinibelo.cashflow/calculator"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        flutterEngine?.let {
            MethodChannel(it.dartExecutor, CHANNEL).setMethodCallHandler { call, result ->
                if (call.method == "openCalculator") {
                    openCalculator()
                    result.success(null)
                } else {
                    result.notImplemented()
                }
            }
        }
    }

    private fun openCalculator() {
        try {
            val intent = Intent(Intent.ACTION_MAIN)
            intent.addCategory(Intent.CATEGORY_APP_CALCULATOR)
            startActivity(intent)
        } catch (e: ActivityNotFoundException) {
            Toast.makeText(this, "Calculator app not found", Toast.LENGTH_SHORT).show()
        }
    }
}
